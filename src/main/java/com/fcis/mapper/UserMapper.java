package com.fcis.mapper;

import com.fcis.model.Role;
import com.fcis.model.User;
import com.fcis.model.informationManagement.outstandingPersonDeclare.ModelWorker;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface UserMapper {

    /**
     * 按条件查询分页展示 按照了基本信息查询
     * @param username 据姓名查询
     * @param sex 性别查询
     * @param nationality 按民族查询
     * @param otherCondition 据其他条件查询
     * @param politicalState 按照社会属性查询 政治状态
     * @return
     */
    List<ModelWorker> gerAllUser(@Param("username") String username
            , @Param("politicalState") String politicalState
            , @Param("otherCondition") String otherCondition
            , @Param("sex")String sex, @Param("nationality") String nationality);
    /**
     * 查找用户名和密码
     * @param username 登录用户名
     * @return
     */
    User findByUsername(@Param("username") String username);
    // 根据用户id查找对应的角色
    List<Role> findUserRole(@Param("id") String id);
    List<User> findAllUser();
    /**
     * 注册用户和密码
     * @param username 用户名
     * @param password 密码
     * @return
     */
    User registerByUsernameAndPassword(@Param("username")String username
            , @Param("password")String password);

    /**
     * 修改用户密码
     * @param oldPassWord 数据库中的密码
     * @return
     */
    void updatePassWord(@Param("oldPassWord") String oldPassWord, @Param("newPassWord") String newPassWord);

    /**
     * 系统管理模块之新增用户
     * @param user 用户
     */
    void insertUserAdmin(User user);

    /**
     * 系统用户管理之查询
     * @param condition 查询条件（按姓名）
     * @return 返回列表
     */
    List<User> selectUserAdmin(@Param("condition") String condition);

    /**
     * 系统用户管理之删除
     * @param id 删除用户id
     */
    void deleteUserAdmin(Integer id);
    int successDeleteUserAdmin(Integer id);

    /**
     * 系统管理之分配用户权限
     * @param id 分配对象的id
     */
    void userAssignPermission(@Param("id") Integer id,@Param("permission") int permission);
}
