package com.epam.onlinestore.repositories;

import com.epam.onlinestore.entities.Order;
import com.epam.onlinestore.entities.OrderProduct;
import com.epam.onlinestore.entities.Product;
import org.aspectj.weaver.ast.Or;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface OrderProductRepository extends JpaRepository<OrderProduct, Long> {
    List<OrderProduct> getOrderProductByOrder(Order order);
    Optional<OrderProduct> findFirstByProduct(Product product);
}
