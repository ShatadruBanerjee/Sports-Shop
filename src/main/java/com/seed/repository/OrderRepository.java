package com.seed.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.seed.model.Order;

public interface OrderRepository extends JpaRepository<Order, Integer> {

}