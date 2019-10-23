package com.zhao.controller;

import com.zhao.domain.User;
import com.zhao.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;
    @RequestMapping("/login")
    public  String Login(){

        return "login";
    }

    @RequestMapping("/dologin")
    public  String doLogin(String name, String password, HttpSession session){
       if("admin".equals(name) && "123".equals(password)){
           session.setAttribute("name",name);
           //return "redirect:/index.jsp"; 跳转到index。jsp
           //return "forward:/WEB-INF/pages/list.jsp";必须是全路径
           //return "forward:method";这个是转发到/user/method对应的方法然后在执行method里的
           //return "redirect:/index.jsp";//这个方法不能重定向到web-inf里面的资源文件
            return "redirect:find";//跳转到find对应的方法
           //return "redirect:/account/list";跳转到别的类方法
       }
       return "login";
    }
    @RequestMapping("/find")
    public  String findUser(Model model){
        List<User> userList = userService.findAll();
        model.addAttribute("userList",userList);
        return "list";
    }

    @RequestMapping("/save")
    public  void userSave(User user, HttpServletRequest request, HttpServletResponse response) throws IOException {
       userService.save(user);
       response.sendRedirect(request.getContextPath()+"/user/find");
       return;
    }
}
