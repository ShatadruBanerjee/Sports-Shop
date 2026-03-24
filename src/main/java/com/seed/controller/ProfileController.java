package com.seed.controller;

import com.seed.model.User;
import com.seed.repository.UserRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ProfileController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/profile")
    public String getProfile(HttpSession session) {
        if (session.getAttribute("user") == null) {
            return "redirect:/login";
        }
        return "profile";
    }

    @PostMapping("/profile")
    public String updateProfile(@RequestParam("username") String username,
                                @RequestParam("password") String password,
                                @RequestParam("file") MultipartFile file,
                                HttpSession session) throws Exception {

        String currentUsername = (String) session.getAttribute("user");

        if (currentUsername != null) {
            User user = userRepository.findByUsername(currentUsername);

            if (user != null) {
                user.setUsername(username);

                if (password != null && !password.isEmpty()) {
                    user.setPassword(password);
                }

                if (!file.isEmpty()) {
                    user.setImage(file.getBytes());
                }

                userRepository.save(user);
                session.setAttribute("user", username);
            }
        }

        return "redirect:/profile";
    }

    @GetMapping("/profile-image/{id}")
    public ResponseEntity<byte[]> getImage(@PathVariable int id) {

        User user = userRepository.findById(id).orElse(null);

        if (user == null || user.getImage() == null) {
            return ResponseEntity.notFound().build();
        }

        return ResponseEntity
                .ok()
                .header("Content-Type", "image/jpeg")
                .body(user.getImage());
    }
}