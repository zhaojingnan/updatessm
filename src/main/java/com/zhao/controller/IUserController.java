package com.zhao.controller;

import com.alibaba.fastjson.JSON;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.zhao.checkmessage.SendMessage;
import com.zhao.domain.IUser;
import com.zhao.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/iuser")
public class IUserController {
    @Autowired
    private IUserService iUserService;

    @RequestMapping("/sendcode")
    public void sendcode(HttpServletRequest request,HttpSession session) throws Exception {
        /*String tel = request.getParameter("tel");
        String codeJson = new SendMessage().sendCode(tel);
        String mycode = JSON.parseObject(codeJson).getString("obj");
        request.setAttribute("mycode",mycode);
        System.out.println("mycode"+mycode);*/
        session.setAttribute("mycode","123");
    }

    @RequestMapping("/userLogin")
    public String userLogin(IUser iUser, HttpServletResponse response, String checkcode, HttpSession session,String isRememberUsername ){
        String code = (String) session.getAttribute("code");
        if(!code.equalsIgnoreCase(checkcode) && checkcode!=null){
            session.setAttribute("msg","请正确填写验证码");
            return "redirect:tologin";
        }
        IUser user=iUserService.login(iUser);
        if(user==null){
            session.setAttribute("msg","请正确填写信息");
            return "redirect:tologin";

        }
        session.setAttribute("user",user);
        //记住用户名和密码
        if("1".equals(isRememberUsername)){
            //判断选择了记住密码按钮,后创建cookie
            Cookie usernamecookie=new Cookie("username",user.getName());
            Cookie passwordcookie=new Cookie("password",user.getPassword());
            //设置cookie生存时间和作用范围
            usernamecookie.setMaxAge(60*30);
            passwordcookie.setMaxAge(60*30);
            usernamecookie.setPath("/");
            passwordcookie.setPath("/");
            //响应添加cookie
            response.addCookie(usernamecookie);
            response.addCookie(passwordcookie);
            session.setAttribute("member",1);


        }else {
            Cookie usernamecookie=new Cookie("username","");
            Cookie passwordcookie=new Cookie("password","");
            //设置cookie生存时间和作用范围
            usernamecookie.setMaxAge(0);
            passwordcookie.setMaxAge(0);
            usernamecookie.setPath("/");
            passwordcookie.setPath("/");
            //响应添加cookie
            response.addCookie(usernamecookie);
            response.addCookie(passwordcookie);
            session.setAttribute("member",0);
        }
        return "redirect:/index.jsp";

    }
    @RequestMapping("/index")
     public String index(){
        System.out.println("index页面经过");
        return "redirect:/index.jsp";
    }

    @RequestMapping("/loginout")
    public String loginOut(HttpSession session){
        session.invalidate();
        return "redirect:/index.jsp";
    }
    @RequestMapping("/tologin")
    public String tologin(){
        return "login";
    }

    @RequestMapping("/toregister")
    public String register(){
        return "register";
    }

    @RequestMapping("/doregister")
    public String doRegister(IUser iUser,String birth,String checkcode,HttpSession session) throws Exception {
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        Date birthday = sdf.parse(birth);
        iUser.setBirthday(birthday);
        String mycode = (String) session.getAttribute("mycode");//工具的验证码
        System.out.println("从session中拿到的验证码"+mycode);
        if(!checkcode.equalsIgnoreCase(mycode)){
           session.setAttribute("codemsg","检查验证码是否正确");
            return "redirect:toregister";
        }
         int flag=iUserService.register(iUser);
         if(flag==1){
             return "redirect:tologin";
         }
         return "redirect:toregister";
    }

    @RequestMapping("/findUser")
    public void findUser( HttpServletResponse response, HttpServletRequest request) throws Exception {
        String username=request.getParameter("username");
        IUser iUser= iUserService.findUser(username);
        ObjectMapper mapper=new ObjectMapper();
        Map<String,Object> map=new HashMap<>();
        if(iUser!=null){
            map.put("findUser",true);
            map.put("userMsg","用户名存在");
        }else {
            map.put("findUser",false);
            map.put("userMsg","用户名可用");
        }
        response.setContentType("text/html;charset=utf-8");
        mapper.writeValue(response.getWriter(),map);
    }
}
