package com.epam.onlinestore.controllers;

import com.epam.onlinestore.entities.Order;
import com.epam.onlinestore.entities.Product;
import com.epam.onlinestore.entities.User;
import com.epam.onlinestore.repositories.ProductRepository;
import com.epam.onlinestore.repositories.UserRepository;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;
import java.util.Set;

@Controller
@RequestMapping("/product")
public class ProductsController {
    ProductRepository productRepository;
    UserRepository userRepository;

    public ProductsController(
            ProductRepository productRepository,
            UserRepository userRepository
    ) {
        this.productRepository = productRepository;
        this.userRepository = userRepository;
    }

    @PostMapping("/add")
    public String addToCart(Product product, Principal principal, @RequestHeader String referer) {
        User user = userRepository.findByEmail(principal.getName());
        Set<Order> orders = user.getOrders();

        return "redirect:" + referer;
    }
}
