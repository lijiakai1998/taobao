package com.controller;

import com.entity.user;
import com.service.UserService;
import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
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

@WebServlet("/userRegistServlet")
public class UserRegistServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        //获取请求参数
        Map map = request.getParameterMap();
        //获取ApplicationContext对象
        ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
        //获取User对象
        user user = (user) context.getBean("user");
        try {
            //使用BeanUtils封装
            BeanUtils.populate(user, map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        //获取UserService对象
        UserService userService = (UserService) context.getBean("userService");
        int count = userService.regist(user);
        //判断是否注册成功
        if (count == 1){
            //注册成功
            HttpSession session=request.getSession();
            session.setAttribute("zhuceming",map.get("uNiCheng"));
            response.sendRedirect(request.getContextPath()+"/jsp/userLoginAndRegist/login.jsp");
        }else {
            if (count == 0){
                //未选择头像
                request.setAttribute("regist_msg", "请选择头像！");
                request.getRequestDispatcher("/jsp/userLoginAndRegist/regist.jsp").forward(request, response);
            }else {
                //注册失败
                request.setAttribute("regist_msg", "表单内容不能为空！");
                request.getRequestDispatcher("/jsp/userLoginAndRegist/regist.jsp").forward(request, response);
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
