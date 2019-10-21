package com.entity;

import lombok.Data;

@Data
public class goods {
    private Integer gId;
    private String gName;
    private String gStore;
    private Double gPrice;
    private Integer gPageView;
    private String gImage;
    private String gCategory;
    private String gAttribute;
    private int gCount;

    public int getgCount() {
        return gCount;
    }

    public void setgCount(int gCount) {
        this.gCount = gCount;
    }

    public String getgCategory() {
        return gCategory;
    }

    public void setgCategory(String gCategory) {
        this.gCategory = gCategory;
    }

    public String getgAttribute() {
        return gAttribute;
    }

    public void setgAttribute(String gAttribute) {
        this.gAttribute = gAttribute;
    }

    public Integer getgId() {
        return gId;
    }

    public void setgId(Integer gId) {
        this.gId = gId;
    }

    public String getgName() {
        return gName;
    }

    public void setgName(String gName) {
        this.gName = gName;
    }

    public String getgStore() {
        return gStore;
    }

    public void setgStore(String gStore) {
        this.gStore = gStore;
    }

    public Double getgPrice() {
        return gPrice;
    }

    public void setgPrice(Double gPrice) {
        this.gPrice = gPrice;
    }

    public Integer getgPageView() {
        return gPageView;
    }

    public void setgPageView(Integer gPageView) {
        this.gPageView = gPageView;
    }

    public String getgImage() {
        return gImage;
    }

    public void setgImage(String gImage) {
        this.gImage = gImage;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof goods) {
            goods goods = (com.entity.goods) obj;
            if (goods.getgId() == this.gId) {
                return true;
            }else {
                return false;
            }
        }
        return false;
    }
}
