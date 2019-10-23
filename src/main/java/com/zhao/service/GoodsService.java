package com.zhao.service;

import com.zhao.domain.Category;
import com.zhao.domain.Goods;
import com.zhao.domain.Page;

import java.util.List;

public interface GoodsService {
    List<Category> getCategory();

    Page getGoodsListPage(Integer pageNum, Integer typeid);

    List<Goods> findAllGoodsList(Integer typeid);

    Goods getGoodsById(String id);
}
