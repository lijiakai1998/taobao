package com.controller;

import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/loginCheckAjax")
public class LoginCheckAjax extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        //创建Session对象
        HttpSession session = request.getSession();
        String login_msg = (String) session.getAttribute("login_msg");
        //创建Map集合
        Map<String, Object> map = new HashMap<String, Object>();
        //判断登录是否成功
        if (login_msg != null){
            map.put("userExist", false);
            map.put("msg", login_msg);
        }
        //创建ObjectMapper对象，将map集合转换为json数据
        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(response.getWriter(), map);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
