package com.epam.onlinestore.controllers;

import com.epam.onlinestore.entities.*;
import com.epam.onlinestore.repositories.OrderProductRepository;
import com.epam.onlinestore.repositories.OrderRepository;
import com.epam.onlinestore.repositories.ProductRepository;
import com.epam.onlinestore.repositories.UserRepository;
import org.aspectj.weaver.ast.Or;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;
import java.util.List;
import java.util.Set;

@Controller
@RequestMapping("/product")
public class ProductsController {
    ProductRepository productRepository;
    UserRepository userRepository;
    OrderRepository orderRepository;
    OrderProductRepository orderProductRepository;

    public ProductsController(
            ProductRepository productRepository,
            UserRepository userRepository,
            OrderRepository orderRepository,
            OrderProductRepository orderProductRepository
    ) {
        this.productRepository = productRepository;
        this.userRepository = userRepository;
        this.orderRepository = orderRepository;
        this.orderProductRepository = orderProductRepository;
    }

    @PostMapping("/add")
    public String addToCart(Product product, Principal principal, @RequestHeader String referer) {
        User user = userRepository.findByEmail(principal.getName());
        Order currentOrder = getCurrentOrder(user);
        product = productRepository.getById(product.getId());

        orderProductRepository.save(new OrderProduct(currentOrder, product));

        return "redirect:" + referer;
    }

    private Order getCurrentOrder(User user) {
        List<Order> createdOrders = orderRepository.findOrdersByStatusAndUserOrderByDateCreatedDesc(OrderStatus.CREATED, user);

        Order currentOrder = createdOrders.get(0);

        // There should be only one CREATED order, set UNKNOWN status to the rest
        // TODO: Log that
        if (createdOrders.size() > 1) {
            createdOrders.remove(0);
            createdOrders.forEach(order -> order.setStatus(OrderStatus.UNKNOWN));
        }

        return currentOrder;
    }
}
