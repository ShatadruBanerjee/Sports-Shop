package com.seed.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;
import java.util.*;

@Controller
public class CartController {

    private void updateCartCount(HttpSession session) {
        List<Map<String, Object>> cart = (List<Map<String, Object>>) session.getAttribute("cart");
        int count = (cart != null) ? cart.size() : 0;
        session.setAttribute("cartCount", count);
    }

    @GetMapping("/add-to-cart")
    public String addToCart(@RequestParam String name,
                            @RequestParam double price,
                            HttpSession session) {

        List<Map<String, Object>> cart = (List<Map<String, Object>>) session.getAttribute("cart");
        if (cart == null) cart = new ArrayList<>();

        Map<String, Object> item = new HashMap<>();
        item.put("name", name);
        item.put("price", price);

        cart.add(item);
        session.setAttribute("cart", cart);

        updateCartCount(session);
        return "redirect:/products";
    }

    @GetMapping("/cart")
    public String viewCart() {
        return "cart"; 
    }

    @GetMapping("/remove-from-cart")
    public String removeFromCart(@RequestParam int index, HttpSession session) {
        List<Map<String, Object>> cart = (List<Map<String, Object>>) session.getAttribute("cart");
        if (cart != null && index >= 0 && index < cart.size()) {
            cart.remove(index);
            session.setAttribute("cart", cart);
        }
        updateCartCount(session); 
        return "redirect:/cart";
    }

   
}