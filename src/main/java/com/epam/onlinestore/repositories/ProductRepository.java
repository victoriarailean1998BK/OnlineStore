package com.epam.onlinestore.repositories;

import com.epam.onlinestore.entities.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Long> {
}