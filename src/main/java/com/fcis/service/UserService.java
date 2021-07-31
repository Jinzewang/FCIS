package com.fcis.service;

import com.fcis.model.User;
import com.fcis.model.informationManagement.outstandingPersonDeclare.ModelWorker;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UserService {
    // 按条件查询劳模
    List<ModelWorker> getAllUser(String username, String otherCondition, String sex, String nationality, String politicalState
            , int currPage, int pageSize);
    // 检验用户登录
    User checkLogin(String username,String password);
    // 修改密码
    User updatePasswd(String username, String oldPassWord, String newPassWord);

    /**
     * 系统管理模块之新增用户
     * @param user 用户
     * @return
     */
    boolean adminInsertUser(User user, String passwd);

    /**
     * 按条件查询用户
     * @param condition 查询条件
     * @return 用户列表
     */
    List<User> selectUserAdmin(String condition);

    /**
     * 系统用户管理之删除用户
     * @param id 要删除用户的id
     * @return 返回是否删除成功
     */
    boolean deleteUserAdmin(Integer id);

    /**
     * 系统管理之用户权限分配
     * @param id 要分配用户的id
     * @param permission 要给与其分配的权限
     */
    void userAssignPermission(Integer id, String permission);
}
