package com.seed.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.seed.model.Order;
import com.seed.repository.OrderRepository;

import jakarta.servlet.http.HttpSession;
import java.util.*;

@Controller
public class OrderController {

    @Autowired
    private OrderRepository repo;

    @GetMapping("/place-order")
    public String placeOrder(HttpSession session,
                             @RequestParam(required = false) String name,
                             @RequestParam(required = false) Double price) {

        String user = (String) session.getAttribute("user");

        List<Map<String, Object>> cart = (List<Map<String, Object>>) session.getAttribute("cart");
        if (cart != null && !cart.isEmpty()) {
            for (Map<String, Object> item : cart) {
                Order o = new Order();
                o.setUsername(user);
                o.setProductName((String) item.get("name"));
                o.setPrice(Double.parseDouble(item.get("price").toString()));
                repo.save(o);
            }
            session.removeAttribute("cart");
            session.setAttribute("cartCount", 0);
        }
        else if (name != null && price != null) {
            Order o = new Order();
            o.setUsername(user);
            o.setProductName(name);
            o.setPrice(price);
            repo.save(o);
        }
        else {
            return "redirect:/cart";
        }

        return "order_success";
    }
}