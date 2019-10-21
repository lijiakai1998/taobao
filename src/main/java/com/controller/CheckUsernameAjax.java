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

@WebServlet("/checkUsernameAjax")
public class CheckUsernameAjax extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        //获取请求参数
        String u_name = request.getParameter("u_name");
        //创建ApplicationContext对象
        ApplicationContext context =new ClassPathXmlApplicationContext("spring/applicationContext.xml");
        //获取UserService对象
        UserService userService = (UserService) context.getBean("userService");
        user user = userService.findByName(u_name);
        //创建Map集合，用来转换json数据
        Map<String, Object> map = new HashMap<String, Object>();
        //判断输入的用户名是否为空
        if ("".equals(u_name)){
            map.put("usernameEmpty", true);
            map.put("msg", "用户名不能为空！");
        }else {
            //判断是否存在该用户名
            if (user == null){
                //不存在
                map.put("userExist", false);
                map.put("msg", "用户名可用！");
            }else {
                //存在
                map.put("userExist", true);
                map.put("msg", "该用户名已存在，请换一个！");
            }
        }
        //将map集合转为json
        ObjectMapper json = new ObjectMapper();
        json.writeValue(response.getWriter(), map);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
