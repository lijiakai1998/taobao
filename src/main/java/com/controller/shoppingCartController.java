package com.controller;

import com.entity.goods;
import com.entity.shoppingCat;
import com.entity.user;
import com.service.shoppingCartService;
import com.service.weitaoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

@Controller
@RequestMapping("/shoppingCart")
public class shoppingCartController {
    @Autowired
    shoppingCartService shoppingCartService;
    @Autowired
    weitaoService weitaoService;

   @RequestMapping("/addShoppingCart")
    public String addShoppingCart(HttpServletRequest request, Model model) {
       user user = (com.entity.user) request.getSession().getAttribute("login_user");
       int id=Integer.parseInt(request.getParameter("gId"));
       int gSum=Integer.parseInt(request.getParameter("gSum"));
       System.out.println(user);
       System.out.println(id);
       System.out.println(gSum);
       shoppingCat s1=shoppingCartService.selectById(id);
       if(s1!=null && s1.getsUid()==user.getuId())
       {
             s1.setsCount(s1.getsCount()+gSum);
             shoppingCartService.updateCart(s1);
             model.addAttribute("meg", "yes");
             model.addAttribute("gId", id);
             return "/rightMegs";
       }
       else {
           shoppingCat shoppingCart = new shoppingCat();
           shoppingCart.setsUid(user.getuId());
           shoppingCart.setsGid(id);
           shoppingCart.setsCount(gSum);
           if (shoppingCartService.insertIntoShoppingCart(shoppingCart)) {
               model.addAttribute("meg", "yes");
               model.addAttribute("gId", id);
               return "/rightMegs";
           } else {
               model.addAttribute("meg", "no");
               return "/failMegs";
           }
       }
   }
   @RequestMapping("/showAllShoppingGoods")
    public String showAllShoppingGoods(Model model,HttpServletRequest request)
   {    user user = (com.entity.user) request.getSession().getAttribute("login_user");
       List<shoppingCat> shoppingCarts=shoppingCartService.showAllShoppingGoods(user.getuId());
       List<goods> goods=new ArrayList<>();
       for(shoppingCat shoppingCart: shoppingCarts)
       {
           goods goods1=new goods();
           goods1=weitaoService.showOneGoodsById(shoppingCart.getsGid());
           goods1.setgCount(shoppingCart.getsCount());
           goods.add(goods1);
       }
       model.addAttribute("good",goods);
       return "/shoppingCart/shoppingCart";
   }
   @RequestMapping("/delShoppingGoodsByGid")
    public String delShoppingGoodsByGid(HttpServletRequest request, Model model,
                                        @RequestParam("id") List<Integer> listId) {
       for(int i=0;i<listId.size();i++) {
           int sGid=listId.get(i);
           shoppingCartService.delShoppingGoodsByGid(sGid);
       }
       return "redirect:/shoppingCart//showAllShoppingGoods";
   }

   @RequestMapping("/jiesuan")
   public String toDingDan(@RequestParam("good") goods goods, HttpServletRequest request, Model model) {
       System.out.println(goods);
       int gSum = Integer.parseInt(request.getParameter("gSum"));
       System.out.println(gSum);
       return "/shoppingCart/order";
   }

    //结算跳转
    @RequestMapping(value = "/jieSuanByGoodsId",method = RequestMethod.GET)
    @ResponseBody
    public  String jieSuanByGoodsId(Model model, HttpServletResponse response, HttpServletRequest request,
                                    @RequestParam("json") String json, @RequestParam("count") String count,
                                    @RequestParam("total") String total, @RequestParam("selectTotal") String selectTotal) throws IOException {
        System.out.println(json);
        System.out.println(count);
        System.out.println(total);
        System.out.println(selectTotal);
        //字符串截取数据
        json=json.replace("[","");
        json=json.replace("]","");
        System.out.println(json);
        json=json.replaceAll("\"","");
        json =json.replaceAll("null,", "");
        System.out.println(json);
        count=count.replace("[","");
        count=count.replace("]","");
        count=count.replaceAll("\"","");
        count=count.replaceAll("null,", "");
        System.out.println(count);
        String[] aa=json.split(",");
        request.getSession().setAttribute("allgoodsid",aa);
        System.out.println(Arrays.toString(aa));
        String[] bb=count.split(",");
        request.getSession().setAttribute("everygoodscount",bb);
        System.out.println(Arrays.toString(bb));
        //遍历存储商品
        List<goods>  goodsList=new ArrayList<>();
        for(int i=0;i<aa.length;i++) {
            if(aa[i]==null) {
                continue;
            }
            goods goods=new goods();
            goods=weitaoService.showOneGoodsById(Integer.parseInt(aa[i]));
            //System.out.println(goods);
            if(!goodsList.contains(goods)) {
                goodsList.add(goods);
            }
        }
        List<Integer> acount=new ArrayList<>();
        for(int j=0;j<bb.length;j++) {
            if(bb[j]==null) {
                continue;
            }
            acount.add(Integer.parseInt(bb[j]));
        }
        Map<Integer,Integer> map=new HashMap<Integer, Integer>();
        for(int k=0;k<aa.length;k++) {
            if(aa[k]==null) {
                continue;
            }
            String temp=aa[k];
            if(map.get(Integer.parseInt(temp))!=null) {
                map.put(Integer.parseInt(temp),map.get(Integer.parseInt(temp))+acount.get(k));
            } else {
                map.put(Integer.parseInt(aa[k]), acount.get(k));
            }
        }
        model.addAttribute("goodsList",goodsList);
        request.getSession().setAttribute("goodsList",goodsList);
        //System.out.println(goodsList);
        model.addAttribute("acount",acount);
        request.getSession().setAttribute("count",acount);
        model.addAttribute("map",map);
        request.getSession().setAttribute("map",map);
        // System.out.println(map);
        model.addAttribute("total",total);
        request.getSession().setAttribute("total",total);
        //System.out.println(total);
        model.addAttribute("selectTotal",selectTotal);
        request.getSession().setAttribute("selectTotal",selectTotal);
        //System.out.println(selectTotal)
        return  "{\"msg\":\"true\"}";
    }


    @RequestMapping("/dingDan")
   public String dingDan(Model model, HttpServletRequest request, HttpServletResponse response) {
       model.addAttribute("goodsList",request.getSession().getAttribute("goodsList"));
       model.addAttribute("map",request.getSession().getAttribute("map"));
       model.addAttribute("total",request.getSession().getAttribute("total"));
       model.addAttribute("selectTotal",request.getSession().getAttribute("selectTotal"));
       return "/shoppingCart/order";
   }
}
