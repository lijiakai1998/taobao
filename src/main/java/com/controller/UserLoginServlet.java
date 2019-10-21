package com.controller;

import com.entity.user;
import com.service.UserService;
import org.apache.commons.beanutils.BeanUtils;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet("/userLoginServlet")
public class UserLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        //获取请求参数
        Map map = request.getParameterMap();
        //获取ApplicationContext对象
        ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
        //获取User对象
        user user = (com.entity.user) context.getBean("user");
        try {
            //使用BeanUtils封装
            BeanUtils.populate(user, map);
            HttpSession session=request.getSession();
            session.setAttribute("name",map.get("uNiCheng"));
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        //获取UserService对象
        UserService userService = (UserService) context.getBean("userService");
        user loginUser = userService.login(user);
        //判断是否登录成功
        if (loginUser != null){
            //登录成功
            request.getSession().setAttribute("login_user", loginUser);
            request.getSession().setAttribute("uid",loginUser.getuId());
            response.sendRedirect(request.getContextPath()+"/home");
        }else {
            //登录失败
            request.setAttribute("login_msg", "用户名或密码错误！");
            request.getRequestDispatcher("/jsp/userLoginAndRegist/login.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
