package com.fcis.controller;

import com.fcis.model.User;
import com.fcis.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class UserController {
    @Autowired
    UserService userService;
    @GetMapping("/users")
    public List<User> getAllUsers() {
        return userService.getAllUser();
    }
    @RequestMapping("index")
    public String getIndex() {
        return "index";
    }
}
