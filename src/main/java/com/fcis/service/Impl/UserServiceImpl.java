package com.fcis.service.Impl;

import com.fcis.mapper.UserMapper;
import com.fcis.model.User;
import com.fcis.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userDao;

    /*
     * 检验用户登录业务
     *
     */
    public User checkLogin(String username, String password) {

        User user = userDao.findByUsername(username);
        if(user != null && user.getPassword().equals(password)){
            return user;
        }
        return null;
    }
}
