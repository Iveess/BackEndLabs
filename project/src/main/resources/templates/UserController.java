package com.example.socialnetwork.controller;

import com.example.socialnetwork.model.User;
import com.example.socialnetwork.service.UserService;
import com.example.socialnetwork.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private PostService postService;

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("users", userService.getAllUsers());
        return "index";
    }

    @GetMapping("/profile/{id}")
    public String profile(@PathVariable Long id, Model model) {
        User user = userService.getUserById(id);
        if (user != null) {
            model.addAttribute("user", user);
            model.addAttribute("posts", postService.getPostsByUserId(id));
        }
        return "profile";
    }
}
