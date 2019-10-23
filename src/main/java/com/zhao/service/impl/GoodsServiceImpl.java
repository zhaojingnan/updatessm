package com.zhao.service.impl;

import com.zhao.dao.GoodsDao;
import com.zhao.domain.Category;
import com.zhao.domain.Goods;
import com.zhao.domain.Page;
import com.zhao.service.GoodsService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {
    @Autowired
    private GoodsDao goodsDao;

    @Override
    public List<Category> getCategory() {
       List<Category> categoryList= goodsDao.getCategory();
       return categoryList;
    }

    @Override
    public Page getGoodsListPage(Integer pageNum, Integer typeid) {
        //每个页面的条数
        int size=16;

        return null;
    }

    @Override
    public List<Goods> findAllGoodsList(Integer typeid) {
        if(typeid==null){
         return  goodsDao.findAllGoodsListNoId();
        }
        return  goodsDao.findAllGoodsList(typeid);
    }

    /**
     * 根据商品id查询商品
     * @param id
     * @return
     */
    @Override
    public Goods getGoodsById(String id) {
        return  goodsDao.getGoodsById(id);
    }
}
