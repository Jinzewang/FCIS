package com.fcis.mapper;

import com.fcis.model.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface UserMapper {
    List<User> gerAllUser();
    /**
     * 查找用户名和密码
     * @param username 登录用户名
     * @return
     */
    User findByUsername(String username);


    /**
     * 注册用户和密码
     * @param username 用户名
     * @param password 密码
     * @return
     */
    User registerByUsernameAndPassword(@Param("username")String username,
                                       @Param("password")String password);
}
