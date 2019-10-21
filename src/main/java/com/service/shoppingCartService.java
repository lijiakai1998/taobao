package com.service;

import com.entity.shoppingCat;

import java.util.List;

public interface shoppingCartService {

    public boolean insertIntoShoppingCart(shoppingCat shoppingCart);
    public List<shoppingCat> showAllShoppingGoods(int sUid);
    public void delShoppingGoodsByGid(int sGid);
    public shoppingCat selectById(int sGid);
    public void updateCart(shoppingCat shoppingCat);
}
