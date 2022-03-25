package com.epam.onlinestore.controllers;

import com.epam.onlinestore.entities.*;
import com.epam.onlinestore.repositories.OrderProductRepository;
import com.epam.onlinestore.repositories.OrderRepository;
import com.epam.onlinestore.repositories.ProductRepository;
import com.epam.onlinestore.repositories.UserRepository;
import org.aspectj.weaver.ast.Or;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.security.Principal;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;

@Controller
@RequestMapping("orders")
public class OrdersController {
    OrderProductRepository orderProductRepository;
    OrderRepository orderRepository;
    UserRepository userRepository;
    ProductRepository productRepository;

    public OrdersController(
            OrderProductRepository orderProductRepository,
            OrderRepository orderRepository,
            UserRepository userRepository,
            ProductRepository productRepository
    ) {
        this.orderProductRepository = orderProductRepository;
        this.orderRepository = orderRepository;
        this.userRepository = userRepository;
        this.productRepository = productRepository;
    }


    @GetMapping("/current")
    public String currentOrder(Model model, Principal principal) {

        User user = userRepository.findByEmail(principal.getName());
        Optional<Order> order = orderRepository.findFirstByStatusAndAndUser(OrderStatus.CREATED, user);

        if (order.isPresent()) {
            List<OrderProduct> orderProducts = orderProductRepository.getOrderProductByOrder(order.get());
            Map<Product, Long> products = orderProducts.stream().collect(Collectors.toMap(o -> o.getProduct(), o -> o.getQuantity()));


            model.addAttribute("order_products", products);
        }

        return "orders";
    }
}
