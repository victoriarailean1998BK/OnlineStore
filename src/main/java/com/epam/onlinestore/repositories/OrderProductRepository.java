package com.epam.onlinestore.repositories;

import com.epam.onlinestore.entities.Order;
import com.epam.onlinestore.entities.OrderProduct;
import org.aspectj.weaver.ast.Or;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface OrderProductRepository extends JpaRepository<OrderProduct, Long> {
    List<OrderProduct> getOrderProductByOrder(Order order);
}
