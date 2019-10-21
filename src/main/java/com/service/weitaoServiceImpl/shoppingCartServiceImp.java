package com.service.weitaoServiceImpl;

import com.dao.UserDao;
import com.dao.weitao;
import com.entity.shoppingCat;
import com.service.shoppingCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("shoppingCartService")
public class shoppingCartServiceImp implements shoppingCartService {
    @Autowired
    private weitao dao ;
    @Override
    public boolean insertIntoShoppingCart(shoppingCat shoppingCart) {
        dao.insertIntoShoppingCart(shoppingCart);
        return true;
    }

    @Override
    public List<shoppingCat> showAllShoppingGoods(int sUid) {
        return dao.showAllShoppingGoods(sUid);
    }

    @Override
    public void delShoppingGoodsByGid(int sGid) {
        dao.delShoppingGoodsByGid(sGid);
    }

    @Override
    public shoppingCat selectById(int sGid) {
        return dao.selectById(sGid);
    }

    @Override
    public void updateCart(shoppingCat shoppingCat) {
        dao.updateCart(shoppingCat);
    }


}
