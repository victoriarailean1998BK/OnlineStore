package com.epam.onlinestore.controllers;

import com.epam.onlinestore.entities.Product;
import com.epam.onlinestore.repositories.ProductRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LandingController {
    private ProductRepository productRepository;

    public LandingController(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    @GetMapping("/")
    public String landing(Model model) {
        Page<Product> products = productRepository.findAll(PageRequest.of(0, 4, Sort.Direction.ASC, "dateCreated"));
        model.addAttribute("products", products.getContent());

        return "landing";
    }
}
