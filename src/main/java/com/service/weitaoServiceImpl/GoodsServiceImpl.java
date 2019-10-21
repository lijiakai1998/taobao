package com.service.weitaoServiceImpl;

import com.dao.GoodsDao;
import com.entity.goods;
import com.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsServiceImpl implements GoodsService {
    @Autowired
    private GoodsDao dao;

    @Override
    public goods selGoodById(int gId) {
        goods good = null;
        try {
            good = dao.selGoodById(gId);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return good;
    }

    @Override
    public List<goods> selGood(goods good) {
        List<goods> goods = null;
        try {
            goods = dao.selGood(good);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return goods;
    }

    @Override
    public List<String> selStore() {
        List<String> list = null;
        try {
            list = dao.selStore();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<goods> selGoodByStore(String gStore) {
        List<goods> goods = null;
        try {
            goods = dao.selGoodByStore(gStore);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return goods;
    }

    @Override
    public void updateView(int gId) {
        dao.updateView(gId);
    }

    @Override
    public List<goods> searchGoods(goods goods) {
        return dao.searchGoods(goods);
    }
}
