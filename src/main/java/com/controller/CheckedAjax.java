package com.controller;

import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/checkedAjax")
public class CheckedAjax extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        //获取用户输入的验证码
        String checkCode = request.getParameter("checkCode");
        //获取给用户发送的验证码
        String code = (String) request.getSession().getAttribute("code");
        //创建Map集合，用户转换json
        Map<String, Object> map = new HashMap<String, Object>();
        //判断用户填写的验证码是否正确
        if (checkCode.equals(code)){
            //正确
            map.put("isCheckCode", true);
            map.put("msg", "验证码正确！");
        }else {
            //错误
            map.put("isCheckCode", false);
            map.put("msg", "验证码错误！");
        }
        //将map集合转换为json数据
        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(response.getWriter(), map);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
