package com.epam.onlinestore.entities;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.Set;

@Entity
@Getter @Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "id", nullable = false)
    private Long id;

    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String streetName;
    private String buildingNumber;
    private String apartmentNumber;
    private String floor;
    private String phoneNumber;

    @OneToMany
    @JoinTable(
            name="users_orders",
            joinColumns = @JoinColumn( name="user_id"),
            inverseJoinColumns = @JoinColumn( name="order_id")
    )
    private Set<Order> orders;
}
