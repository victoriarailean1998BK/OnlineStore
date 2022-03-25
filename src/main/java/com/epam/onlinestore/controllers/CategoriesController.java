package com.epam.onlinestore.controllers;

import com.epam.onlinestore.entities.OrderStatus;
import com.epam.onlinestore.repositories.CategoryRepository;
import com.epam.onlinestore.repositories.ProductRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CategoriesController {
    private CategoryRepository categoryRepository;

    public CategoriesController(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    @GetMapping("/categories")
    public String categories(Model model) {
        model.addAttribute("_categories", categoryRepository.findAll());
        return "categories";
    }
}
