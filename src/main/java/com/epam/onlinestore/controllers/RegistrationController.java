package com.epam.onlinestore.controllers;

import com.epam.onlinestore.entities.User;
import com.epam.onlinestore.exceptions.AlreadyExistsException;
import com.epam.onlinestore.repositories.UserRepository;
import com.epam.onlinestore.services.AppUserDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class RegistrationController {

    private final AppUserDetailsService userService;

    public RegistrationController(AppUserDetailsService userService) {
        this.userService = userService;
    }

    @GetMapping("/register")
    public String registration(){
        return "registration";
    }

    @PostMapping("/register")
    public String register(User user, Model model){
        try {
            userService.saveUser(user);
        } catch (AlreadyExistsException e) {
            model.addAttribute("already_exists", true);
            model.addAttribute("email", user.getEmail());
            return "registration";
        }

        return "redirect:/login";
    }
}