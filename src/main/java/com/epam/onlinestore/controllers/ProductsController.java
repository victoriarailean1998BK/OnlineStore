package com.epam.onlinestore.controllers;

import com.epam.onlinestore.entities.Product;
import com.epam.onlinestore.repositories.ProductRepository;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;

@Controller
@RequestMapping("/product")
public class ProductsController {
    ProductRepository productRepository;

    public ProductsController(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    @PostMapping("/add")
    public String addToCart(Product product, Principal principal, @RequestHeader String referer) {

        return "redirect:" + referer;
    }
}
