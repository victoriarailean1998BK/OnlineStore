package com.epam.onlinestore.repositories;

import com.epam.onlinestore.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
}