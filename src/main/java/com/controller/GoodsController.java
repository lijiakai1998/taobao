package com.controller;

import com.entity.goods;
import com.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/goods")
public class GoodsController {
    @Autowired
    private GoodsService service;

    @RequestMapping("/good")
    public String goodDetail(@RequestParam("gId") int gId, Model model) {
        goods good = service.selGoodById(gId);
        service.updateView(gId);
        //System.out.println(good.getgPageView());
        model.addAttribute("good", good);
        return "/goods/good";
    }

    @RequestMapping("/selGood")
    public String selGood(goods good, Model model) {
        List<goods> goods = service.selGood(good);
        model.addAttribute("goods", goods);
        return "/goods/showAllGoods";
    }

    @RequestMapping("/stores")
    public String selStore(Model model) {
        List<String> store = service.selStore();
        model.addAttribute("stores", store);
        return "/goods/stores";
    }

    @RequestMapping("/selGoodByStore")
    public String selGoodByStore(@RequestParam("gStore") String gStore, Model model) {
        List<goods> goods = service.selGoodByStore(gStore);
        model.addAttribute("goods", goods);
        return "/goods/showAllGoods";
    }
    @RequestMapping("/searchGoods")
    public String searchGoods(Model model,@RequestParam("gCategory") String gCategory)
    {
        System.out.println(gCategory);
        goods good=new goods();
        good.setgCategory(gCategory);
        good.setgAttribute(gCategory);
        List<goods> goods=service.searchGoods(good);
        System.out.println(goods);
        model.addAttribute("goods",goods);
        return "/goods/showAllGoods";

    }
}