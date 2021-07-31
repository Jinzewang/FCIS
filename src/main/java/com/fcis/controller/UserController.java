package com.fcis.controller;

import com.fcis.model.User;
import com.fcis.model.informationManagement.outstandingPersonDeclare.ModelWorker;
import com.fcis.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    UserService userService;

    // 按条件查询劳模
    @RequestMapping("/selectUsers/{currPage}")//url=/selectUsers?currPage=2
    public List<ModelWorker> getAllUsers(String username, String otherCondition, String sex, String nationality, String politicalState
            , @PathVariable("currPage") int currPage,HttpSession session) {
        List<ModelWorker> modelWorkerList = userService.getAllUser(username, otherCondition, sex, nationality, politicalState, currPage, 9);
        session.setAttribute("modelWorkerList",modelWorkerList);
        return modelWorkerList;
    }

    //正常访问login页面
    @RequestMapping("/login")
    public String login() {
        return "logon";
    }

    // 修改密码
    @RequestMapping("/updatePasswd")
    public String updatePasswd() {
        return "password_reset";
    }
    // 确认修改密码

    @RequestMapping("/updateNewPassWord")
    @ResponseBody
//    不要姓名与老密码
    public String updateNewPassWord(String username, String oldPassWord, String newPassWord, String newPassWord1) {
        if (newPassWord.equals(newPassWord1)) {
            return "两次新密码输入不一致！";
        }
        User user = userService.updatePasswd(username, oldPassWord, newPassWord);
        if (user != null) {
            return "用户修改成功success！";
        }
        return "用户修改失败！fail";
    }
    //表单提交过来的路径
    /*@RequestMapping("/checkLogin")
    public String checkLogin(String username, String password){
        //调用service方法
        User user = userService.checkLogin(username, password);
        //若有user则添加到model里并且跳转到成功页面
        if(user != null && user.getPassword() != null){
            return "home_page";
        }
        else
            return "logon";
    }*/
    // 权限控制加密测试
    @RequestMapping("/checkLogin")
    public String checkLogin(String username,String password) {
        Subject subject = SecurityUtils.getSubject();
        if (!subject.isAuthenticated()) {
            //当没有认证的时候将用户名和密码封装成UsernamePasswordToken对象
            UsernamePasswordToken token = new UsernamePasswordToken(username, password);
            token.setRememberMe(true);
            try {
                //执行认证操作.
                subject.login(token);
            } catch (AuthenticationException ae) {
                System.out.println("登陆失败: " + ae.getMessage());
                return "/logon.jsp";
            }
        }
        return "redirect:/home_page.jsp";
    }
    //测试超链接跳转到另一个页面是否可以取到session值
    /*@RequestMapping("/anotherpage")
    public String hrefpage(){

        return "anotherpage";
    }*/

    //注销方法
    @RequestMapping("/outLogin")
    public String outLogin(HttpSession session){
        //通过session.invalidata()方法来注销当前的session
        session.invalidate();
        return "logon";
    }


    // 系统管理模块

    /**
     * 系统管理员新增用户
     * @param user 用户 用户初始密码在这里指定
     * @return 返回是否插入成功
     */
    @RequestMapping({"/insertUserAdmin","/updateUserAdmin"})
    public boolean adminInsertUser(User user) {
        boolean insertUserSuccess = userService.adminInsertUser(user, user.getPassword());
        return insertUserSuccess;
    }

    /**
     * 系统用户管理之查询
     * @param condition 查询条件 （按姓名）
     * @return 返回列表
     */
    @RequestMapping("/selectUserAdmin")
    public List<User> selectUserAdmin(String condition,HttpSession session) {
        List<User> users = userService.selectUserAdmin(condition);
        session.setAttribute("users",users);
        return users;
    }

    /**
     * 系统用户管理之删除用户
     * @param id
     * @return
     */
    @RequestMapping("/deleteUserAdmin")
    public boolean deleteUserAdmin(Integer id) {
        boolean isDelete = userService.deleteUserAdmin(id);
        return isDelete;
    }
}
