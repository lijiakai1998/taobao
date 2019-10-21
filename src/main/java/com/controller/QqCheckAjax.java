package com.controller;

import com.entity.user;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.service.UserService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/qqCheckAjax")
public class QqCheckAjax extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        //获取用户输入的QQ
        String u_qq = request.getParameter("u_qq");
        //获取ApplicationContext对象
        ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
        //获取UserService对象
        UserService userService = (UserService) context.getBean("userService");
        user user = userService.findByQq(u_qq);
        System.out.println(user);
        //创建Map集合转换json数据
        Map<String, Object> map = new HashMap<String, Object>();
        //判断
        if (user != null){
            map.put("qqExist", true);
            map.put("msg", "该QQ已被注册，请换一个！");
        }
        //创建ObjectMapper对象，将map集合转为json数据
        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(response.getWriter(), map);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
