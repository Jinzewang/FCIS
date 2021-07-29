package com.fcis.service.Impl;

import com.fcis.mapper.UserMapper;
import com.fcis.model.User;
import com.fcis.model.informationManagement.outstandingPersonDeclare.ModelWorker;
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
    public List<ModelWorker> getAllUser(String username, String otherCondition, String sex, String nationality, String politicalState
            , int currPage, int pageSize) {
        List<ModelWorker> users = userDao.gerAllUser(username, otherCondition,sex,nationality,politicalState);
        int firstIndex = (currPage-1)*pageSize;
        int endIndex = currPage*pageSize;
        return users.subList(firstIndex,endIndex);
    }

    /**
     * 系统用户管理之新增用户
     * @param user 用户
     * @return
     */
    @Override
    public boolean adminInsertUser(User user, String passwd) {
        userDao.insertUserAdmin(user);
        User username = userDao.findByUsername(user.getUsername());
        if (username != null && user.getPassword().equals(passwd))
            return true;
        return false;
    }

    /**
     * 系统用户管理之查询
     * @param condition 查询条件
     * @return 返回列表
     */
    @Override
    public List<User> selectUserAdmin(String condition) {
        return userDao.selectUserAdmin(condition);
    }
}
