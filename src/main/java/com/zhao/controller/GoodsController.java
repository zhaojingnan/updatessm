package com.zhao.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhao.domain.Category;
import com.zhao.domain.Goods;
import com.zhao.service.GoodsService;
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
    private GoodsService goodsService;

    //商品详情
    @RequestMapping("/getdetail")
    public String getGoodsDatail(Model model,String id){
        List<Category> category=goodsService.getCategory();
        model.addAttribute("category",category);
        //根据商品id查询商品
        Goods goods=  goodsService.getGoodsById(id);
        model.addAttribute("goods",goods);
        return "forward:togoodsdetail";
    }
    //商品详情首页
    @RequestMapping("/togoodsdetail")
    public String toGoodsDetail(){
      return "detailmenu";
    }
    //定制套餐首页
    @RequestMapping("/togoods")
    public String toGoods(){
        return "menu";
    }
    //获取二级菜单和商品列表
    @RequestMapping("/getmenu")
    public String getmenu(Model model, @RequestParam(name = "pageNum",defaultValue ="1") Integer pageNum, Integer typeid){
        List<Category> category=goodsService.getCategory();
        model.addAttribute("category",category);
        model.addAttribute("typeid",typeid);
        //查询商品列表
        PageHelper.startPage(pageNum,12);
        List<Goods> goodsList= goodsService.findAllGoodsList(typeid);
        PageInfo<Goods> pageInfo=new PageInfo<>(goodsList,12);
        model.addAttribute("pageInfo",pageInfo);
        return "forward:togoods";
    }
}


