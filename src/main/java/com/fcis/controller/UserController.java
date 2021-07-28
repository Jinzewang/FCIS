package com.fcis.controller;

import com.fcis.model.User;
import com.fcis.service.UserService;
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
    @RequestMapping("/selectUsers/{currPage}/{pageSize}")
    public List<User> getAllUsers(String username, String otherCondition,String sex,String nationality,String politicalState
            , @PathVariable("currPage") int currPage, @PathVariable("pageSize") int pageSize) {
        return userService.getAllUser(username, otherCondition,sex,nationality,politicalState, currPage, pageSize);
    }

    //正常访问login页面
    @RequestMapping("/login")
    public String login() {
        return "logon";
    }

    // 修改密码
    @RequestMapping("/updatePasswd")
    public String updatePasswd() {
        return "updatePassword";
    }
    // 确认修改密码

    @RequestMapping("/updateNewPassWord")
    @ResponseBody
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
    @RequestMapping("/checkLogin")
    public String checkLogin(String username, String password){
        //调用service方法
        User user = userService.checkLogin(username, password);
        //若有user则添加到model里并且跳转到成功页面
        if(user != null){
            return "home_page";
        }
        return "logon";
    }

    //测试超链接跳转到另一个页面是否可以取到session值
    @RequestMapping("/anotherpage")
    public String hrefpage(){

        return "anotherpage";
    }

    //注销方法
    @RequestMapping("/outLogin")
    public String outLogin(HttpSession session){
        //通过session.invalidata()方法来注销当前的session
        session.invalidate();
        return "logon";
    }

    // 先进个人申报
    @RequestMapping("/declare")
    public String getDeclare() {
        return "selectTitleAndTreatment";
    }
}
