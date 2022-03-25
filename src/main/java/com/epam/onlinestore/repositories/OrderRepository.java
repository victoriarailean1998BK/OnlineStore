package com.epam.onlinestore.repositories;

import com.epam.onlinestore.entities.Order;
import com.epam.onlinestore.entities.OrderStatus;
import com.epam.onlinestore.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Set;

public interface OrderRepository extends JpaRepository<Order, Long> {
    List<Order> findOrdersByStatusAndUserOrderByDateCreatedDesc(OrderStatus status, User user);
}