package com.fcis.service;

import com.fcis.mapper.UserMapper;
import com.fcis.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UserService {
    // 按条件查询劳模
    List<User> getAllUser(String username, String otherCondition, int currPage, int pageSize);
    // 检验用户登录
    User checkLogin(String username,String password);
    // 修改密码
    User updatePasswd(String username, String oldPassWord, String newPassWord);
}
