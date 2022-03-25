package com.epam.onlinestore.repositories;

import com.epam.onlinestore.entities.Category;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryRepository extends JpaRepository<Category, Long> {
}