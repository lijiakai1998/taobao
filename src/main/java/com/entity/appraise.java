package com.entity;

import org.springframework.stereotype.Repository;

/**
 *评价实体类
 * **/
@Repository
public class appraise {


    public int getaId() {
        return aId;
    }

    public void setaId(int aId) {
        this.aId = aId;
    }
    private  int   aId;//商品编号
    private String uNiCheng;//昵称
    private String gName;//商品名称
    private Double gPrice;//价格
    private String gImage;//商品图片
    private String aAppraise;//评价
    private String aTime;//评价时间

    @Override
    public String toString() {
        return "appraise{" +
                "aId=" + aId +
                ", uNiCheng='" + uNiCheng + '\'' +
                ", gName='" + gName + '\'' +
                ", gPrice=" + gPrice +
                ", gImage='" + gImage + '\'' +
                ", aAppraise='" + aAppraise + '\'' +
                ", aTime='" + aTime + '\'' +
                '}';
    }

    public String getuNiCheng() {
        return uNiCheng;
    }

    public void setuNiCheng(String uNiCheng) {
        this.uNiCheng = uNiCheng;
    }

    public String getgName() {
        return gName;
    }

    public void setgName(String gName) {
        this.gName = gName;
    }

    public Double getgPrice() {
        return gPrice;
    }

    public void setgPrice(Double gPrice) {
        this.gPrice = gPrice;
    }

    public String getgImage() {
        return gImage;
    }

    public void setgImage(String gImage) {
        this.gImage = gImage;
    }

    public String getaAppraise() {
        return aAppraise;
    }

    public void setaAppraise(String aAppraise) {
        this.aAppraise = aAppraise;
    }

    public String getaTime() {
        return aTime;
    }

    public void setaTime(String aTime) {
        this.aTime = aTime;
    }
}
