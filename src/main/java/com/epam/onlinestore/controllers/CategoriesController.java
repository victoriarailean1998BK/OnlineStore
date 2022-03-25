package com.epam.onlinestore.controllers;

import com.epam.onlinestore.entities.OrderStatus;
import com.epam.onlinestore.entities.Product;
import com.epam.onlinestore.repositories.CategoryRepository;
import com.epam.onlinestore.repositories.ProductRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/categories")
public class CategoriesController {
    private CategoryRepository categoryRepository;
    private ProductRepository productRepository;

    public CategoriesController(
            CategoryRepository categoryRepository,
            ProductRepository productRepository
    ) {
        this.categoryRepository = categoryRepository;
        this.productRepository = productRepository;
    }

    @GetMapping
    public String categories(Model model) {
        model.addAttribute("_categories", categoryRepository.findAll());
        return "categories";
    }

    @GetMapping("/{id}/products")
    public String categoryProducts(
            @PathVariable Long id,
            @RequestParam(defaultValue = "0") Integer page,
            @RequestParam(defaultValue = "10") Integer size,
            Model model,
            HttpServletRequest request
    ) {
        Pageable paging = PageRequest.of(page, size);
        Page<Product> products = productRepository.findByCategoryId(paging, id);
        model.addAttribute("products", products.getContent());
        model.addAttribute("_categories", categoryRepository.findAll());

        Integer totalPages = products.getTotalPages();

        model.addAttribute("totalPages", totalPages);

        if (page < totalPages) {
            model.addAttribute("nextPageLink", request.getRequestURL().toString() + "?page=" + (page + 1));
        }
        if (page > 0) {
            model.addAttribute("previousPageLink", request.getRequestURL().toString() + "?page=" + (page - 1));
        }

        return "products";
    }
}
