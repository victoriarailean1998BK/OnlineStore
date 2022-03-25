package com.epam.onlinestore.services;

import com.epam.onlinestore.entities.Role;
import com.epam.onlinestore.entities.User;
import com.epam.onlinestore.exceptions.AlreadyExistsException;
import com.epam.onlinestore.repositories.UserRepository;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.Objects;

@Service
public class AppUserDetailsService implements UserDetailsService {

    private final UserRepository userRepository;
    private final BCryptPasswordEncoder bCryptPasswordEncoder;

    // Aici se injecteaza dependentele prin constructor. Spring stie ca noi undeva am definit @Bean pentru ele si aici putem sa reutilizam aceleasi obiecte
    // Bean-ul pentru BCryptPasswordEncoder este definit in SecurityConfig, iar pentru UserRepository nu trebuie Bean explicit.
    // Ea extinde JpaRepository asa ca Spring singur stie cum sa creeze instante
    public AppUserDetailsService(UserRepository userRepository, BCryptPasswordEncoder bCryptPasswordEncoder) {
        this.userRepository = userRepository;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
    }

    // Redefinim metoda din interfata UserDetailsService (pe care o implementam aici)
    // Ea este definita de SpringSecurity pentru a gasi utilizatorul in BD.
    // Fara asta, SpringSecurity nu are de unde sti ce fel de model are user-ul in implementarea noastra concreta.
    // Atentie la faptul ca User trebuie sa implementeze UserDetails ca asta sa lucreze asa cum este acum.
    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        User user = userRepository.findByEmail(email);
        return user;
    }

    // Metoda care creaza un user nou. Seteaza rolul si cripteaza parola pentru pastrare
    public void saveUser(User user) throws AlreadyExistsException {
        User dbUser = userRepository.findByEmail(user.getEmail()); // Cauta in baza de date user cu acest email

        if (Objects.nonNull(dbUser)) { // Daca l-a gasit, atunci el deja exista, aruncam o exceptie
            throw new AlreadyExistsException(user.getEmail()); // Exceptia este definita in com.epam.onlinestore.exceptions
        }

        user.setRoles(Collections.singleton(Role.USER)); //Seteaza rolul pentru utilizator nou

        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword())); // Folosim objectul injectat bCryptPasswordEncoder pentru a cripta parola

        // Salvam ceia ce sa primit in BD. Nu vei gasi metoda save() in UserRepository.
        // Ea este definita in JpaRepository si salveaza obiectele automat in dependenta de entitatile definite.
        // In cazul dat noi avem entitatea User care contine toate campurile legare de o inregisrare in BD si JPA singur se ocupa de salvarea lor corecta
        userRepository.save(user);
    }
}
