package com.zhao.dao;

import com.zhao.domain.Category;
import com.zhao.domain.Goods;

import java.util.List;

public interface GoodsDao {
    List<Category> getCategory();

    List<Goods> findAllGoodsList(Integer typeid);

    Goods getGoodsById(String id);

    List<Goods> findAllGoodsListNoId();
}
