package com.zhao.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginInter implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException {
        Object name = request.getSession().getAttribute("name");
         if(name!=null){
             return  true;
         }
         response.sendRedirect(request.getContextPath()+"/user/login");
         return false;
    }
}
