package com.fcis.controller;

import com.fcis.model.User;
import com.fcis.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    UserService userService;
    /*@GetMapping("/users")
    @ResponseBody
    public List<User> getAllUsers() {
        return userService.getAllUser();
    }*/

    //正常访问login页面
    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    //表单提交过来的路径
    @RequestMapping("/checkLogin")
    public String checkLogin(User user, Model model){
        //调用service方法
        user = userService.checkLogin(user.getUsername(), user.getPassword());
        //若有user则添加到model里并且跳转到成功页面
        if(user != null){
            model.addAttribute("user",user);
            return "success";
        }
        return "fail";
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
        return "login";
    }

    // 玩的
    @RequestMapping("/first")
    public String getDeclare() {
        return "modelWorkerDeclare";
    }
}
