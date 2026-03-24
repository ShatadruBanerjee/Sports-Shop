package com.seed.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.seed.repository.ProductRepository;

@Controller
public class ProductController {

    @Autowired
    private ProductRepository repo;

    @GetMapping("/products")
    public String products(Model model) {
        model.addAttribute("products", repo.findAll());
        return "products";
    }
}