package com.fcis.service;

import com.fcis.mapper.UserMapper;
import com.fcis.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    @Autowired
    UserMapper userMapper;
    public List<User> getAllUser() {
        return userMapper.gerAllUser();
    }
}
