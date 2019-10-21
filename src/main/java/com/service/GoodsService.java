package com.service;

import com.entity.goods;

import java.util.List;

public interface GoodsService {
    public goods selGoodById(int gId);
    public List<goods> selGood(goods good);
    public List<String> selStore();
    public List<goods> selGoodByStore(String gStore);
    public void updateView(int gId);
    public List<goods> searchGoods(goods goods);
}
