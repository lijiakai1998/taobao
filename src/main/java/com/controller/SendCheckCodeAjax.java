package com.controller;

import javax.mail.Address;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.Properties;
import java.util.Random;

@WebServlet("/sendCheckCodeAjax")
public class SendCheckCodeAjax extends HttpServlet {
    //发件人邮箱地址
    private static String senderAdddress = "330029675@qq.com";
    //收件人邮箱地址
    private static String receiverAddress = null;
    //发件人账户
    private static String senderAccount = "330029675";
    //发件人密码
    private static String senderPassword = "qovkltiacaepbhhf";
    //要发送的邮箱验证码
    private static String checkCode = null;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        //获取收件人QQ
        String u_qq = request.getParameter("u_qq");
        receiverAddress = u_qq + "@qq.com";
        //1、连接邮箱服务器的参数配置
        Properties pro = new Properties();
        //设置用户的认证方式
        pro.setProperty("mail.smtp.auth", "true");
        //设置传输协议
        pro.setProperty("mail.transport.protocol", "smtp");
        //设置发件人的SMTP服务器地址
        pro.setProperty("mail.smtp.host", "smtp.qq.com");
        //2、创建定义整个应用程序所需的环境信息的Session对象
        Session session = Session.getInstance(pro);
        //设置调试信息在控制台打印
        session.setDebug(true);
        Transport transport = null;
        try {
            //创建邮箱的实例对象
            MimeMessage message = getMimeMessage(session);
            //根据session对象获取邮箱传输对象Transport
            transport = session.getTransport();
            //设置发件人的账户和密码
            transport.connect(senderAccount, senderPassword);
            //大宋邮件，并发送到所有收件人地址。
            //message.getAllRecipients()获取到的是在创建对象是添加的所有收件人、抄送人、密送人
            transport.sendMessage(message, message.getAllRecipients());
            System.out.println("发送成功");
            //给指定人发送邮件
            //transport.sendMessage(message, new Address[]{new InternetAddress("xxx@qq.com")});
            String content = (String) message.getContent();
            //将验证码存到session
            request.getSession().setAttribute("code", content);
        } catch (MessagingException e) {
            e.printStackTrace();
        } finally {
            //关闭邮件连接
            try {
                transport.close();
            } catch (MessagingException e) {
                e.printStackTrace();
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    public static MimeMessage getMimeMessage(Session session) throws MessagingException {
        //创建一份邮件的实例对象
        MimeMessage message = new MimeMessage(session);
        //设置发件人地址
        message.setFrom(new InternetAddress(senderAdddress));
        //设置发送到哪去
        message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(receiverAddress));
        //设置邮箱主题
        message.setSubject("请接收您的验证码", "UTF-8");
        //设置邮箱正文
        message.setContent(getCheckCode(), "text/html;charset=utf-8");
        //设置邮箱发送时间，默认立即发送
        message.setSentDate(new Date());
        return message;
    }

    //产生随机数验证码
    public static String getCheckCode() {
        StringBuffer code = new StringBuffer();
        Random random = new Random();
        for (int i = 0; i < 6 ; i++) {
            int num = random.nextInt(9);
            code.append(num);
        }
        System.out.println(code.toString());
        return code.toString();
    }
}
