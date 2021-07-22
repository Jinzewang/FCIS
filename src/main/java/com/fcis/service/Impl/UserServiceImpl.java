package com.fcis.service.Impl;

import com.fcis.mapper.UserMapper;
import com.fcis.model.User;
import com.fcis.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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

    /**
     *  修改用户密码
     */
    public User updatePasswd(String username, String oldPassWord, String newPassWord) {
        userDao.updatePassWord(oldPassWord,newPassWord);
        User user = userDao.findByUsername(username);
        if (user != null && user.getPassword().equals(newPassWord)) {
            return user;
        }
        return null;
    }

    /**
     * 查詢先進個人,按分页展示查询结果
     * @return
     */
    public List<User> getAllUser(String username, String otherCondition, int currPage, int pageSize) {
        List<User> users = userDao.gerAllUser(username, otherCondition);
        int firstIndex = (currPage-1)*pageSize;
        int endIndex = currPage*pageSize;
        return users.subList(firstIndex,endIndex);
    }
}
