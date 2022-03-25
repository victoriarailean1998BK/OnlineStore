package com.epam.onlinestore.repositories;

import com.epam.onlinestore.entities.Order;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrderRepository extends JpaRepository<Order, Long> {
}