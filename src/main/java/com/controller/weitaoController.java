package com.controller;

import com.entity.administrators;
import com.entity.goods;
import com.entity.user;
import com.service.weitaoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class weitaoController {

    @Autowired
    @Qualifier("administrators")
    private administrators administrators;
    @Autowired
    private weitaoService weitaoService;
//    @ResponseBody
//    @RequestMapping(value = "/zhuce",method = RequestMethod.POST)
//    public void adminLogin(@RequestParam("name") String name, @RequestParam("password") String password, HttpServletResponse response,
//                             HttpServletRequest request){
//        try{
//            request.setCharacterEncoding("UTF-8");
//        }catch (Exception e){
//            e.printStackTrace();
//        }
//        response.setContentType("text/text;charset=utf-8");
//        response.setCharacterEncoding("UTF-8");
//        System.out.println(name);
//        administrators.setdName(name);
//        administrators.setdPassword(password);
//        int i=weitaoService.zhuce(administrators);
//        if (i==1){
//            try{
//                response.getWriter().print("成功啦！");
//            }catch (Exception e){
//                e.printStackTrace();
//            }
//
//        }else {
//            try{
//                response.getWriter().print("失败啦！");
//            }catch (Exception e){
//                e.printStackTrace();
//            }
//        }
//
//    }

//    @RequestMapping("/query")
//    public String query(@RequestParam("name")String name, @RequestParam("password") String password, HttpSession session){
//        session.setAttribute("name",name);
//        user user=weitaoService.query(name,password);
//        if (user!=null){
//            return "cg";
//        }else {
//           return "sb";
//        }

//    }
    @ResponseBody
    @RequestMapping("/weitao")
    public void shouye(HttpServletResponse response){
        try{
            response.setContentType("text/text;charset=utf-8");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().print("欢迎来到微淘首页！");
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @ResponseBody
    @RequestMapping(value = "/guancha",method = RequestMethod.POST)
    public void guancha(@RequestParam("/name") String name,HttpServletResponse response){
        if (name.equals("admin")){
            try{
                response.getWriter().println(1);//1表示是管理员
            }catch (Exception e){
                e.printStackTrace();
            }
        }else {
            try{
                response.getWriter().println(0);//0表示不是管理员
            }catch (Exception e){
                e.printStackTrace();
            }
        }
    }
    @ResponseBody
    @RequestMapping(value = "/adminSelect",method = RequestMethod.POST)
    public void adminSelect(@RequestParam("dname") String dname,HttpServletResponse response){
        System.out.println(dname);
        administrators administrators=weitaoService.adminSelect(dname);
        try{
            if (administrators!=null){
                response.getWriter().println(1);//1表示管理员的名字正确
            }else {
                response.getWriter().println(0);//0表示管理员名字错误
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @RequestMapping("/adminLogin")
    public String adminLogin(@RequestParam("dName") String dName,
                             @RequestParam("dPassword") String dPassword,
                             HttpServletRequest request, Model model){
        administrators.setdPassword(dPassword);
        administrators.setdName(dName);
        administrators administrators=weitaoService.adminLogin(dName,dPassword);
        if (administrators!=null){
            request.getSession().setAttribute("admin", administrators);
            return "redirect:/admin/home";
        }else {
            model.addAttribute("cuowu","用户名或者密码错误！");
            return "/admin/adminLogin";
        }
    }


//    @RequestMapping("/admin/userList")
//    public String userList(Model model){
//        model.addAttribute("userList", weitaoService.userList());
//        return "/admin/yongHuGuanLi";
//    }

    @RequestMapping("/main")
    public String userLogin(Model model) {
        List<goods> goods = weitaoService.goods();
        model.addAttribute("goods", goods);
        return "/main";
    }

    @RequestMapping("/nav")
    public String toNav() {
        return "/nav";
    }

    @RequestMapping("/home")
    public String toBottom() {
        return "/home";
    }

    @RequestMapping("/updatezhuangtai")
    public String updatezhuangtai(HttpSession session){
//        Integer uid=(Integer) session.getAttribute("uid");
//        Integer gid=(Integer) session.getAttribute("gid");
        String dDingdanhao=(String)session.getAttribute("dDingdanhao");
        int v=weitaoService.updatezhuangtai(dDingdanhao);
        if (v>0){
            return "redirect:home";
        }
        return "";
    }
}
