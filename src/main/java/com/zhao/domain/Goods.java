package com.zhao.domain;

public class Goods {
    private Integer id;
    private String name;
    private Double marketprice;
    private Double estoreprice;
    private Integer category_id;
    private Integer num;
    private String titleimage;
    private String description;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getMarketprice() {
        return marketprice;
    }

    public void setMarketprice(Double marketprice) {
        this.marketprice = marketprice;
    }

    public Double getEstoreprice() {
        return estoreprice;
    }

    public void setEstoreprice(Double estoreprice) {
        this.estoreprice = estoreprice;
    }

    public Integer getCategory_id() {
        return category_id;
    }

    public void setCategory_id(Integer category_id) {
        this.category_id = category_id;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public String getTitleimage() {
        return titleimage;
    }

    public void setTitleimage(String titleimage) {
        this.titleimage = titleimage;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", marketprice=" + marketprice +
                ", estoreprice=" + estoreprice +
                ", category_id=" + category_id +
                ", num=" + num +
                ", titleimage='" + titleimage + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
