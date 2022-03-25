package com.epam.onlinestore.controllers;

import com.epam.onlinestore.entities.Role;
import com.epam.onlinestore.entities.User;
import com.epam.onlinestore.repositories.UserRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Collections;
import java.util.Map;

@Controller
public class RegistrationController {

    private final UserRepository userRepository;

    public RegistrationController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @GetMapping("/register")
    public String registration(){
        return "registration";
    }

    @GetMapping("/test")
    public String test(){
        return "test";
    }


    @PostMapping("/register")
    public String addUser(User user, Map<String, Object> model){

        user.setRoles(Collections.singleton(Role.USER));

        userRepository.save(user);

        return "redirect:/login";
    }
}