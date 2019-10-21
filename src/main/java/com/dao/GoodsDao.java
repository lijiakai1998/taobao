package com.dao;

import com.entity.goods;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface GoodsDao {
    public goods selGoodById(@Param("gId") int gId);
    public List<goods> selGood(goods good);
    public List<String> selStore();
    public List<goods> selGoodByStore(@Param("gStore") String gStore);
    public void updateView(int gId);
    /*搜索栏模糊查询*/
    public List<goods> searchGoods(goods goods);
}
