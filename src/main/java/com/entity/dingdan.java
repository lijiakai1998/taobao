package com.entity;

import lombok.Data;

@Data
public class dingdan {
    private Integer dId;
    private Integer dUid;
    private Integer dGid;
    private String dAppraise;
    private String dTime;
    private String dDingdanhao;
    private int dShuliang;
    private int dZhuangtai;

    public int getdShuliang() {
        return dShuliang;
    }

    public void setdShuliang(int dShuliang) {
        this.dShuliang = dShuliang;
    }

    public int getdZhuangtai() {
        return dZhuangtai;
    }

    public void setdZhuangtai(int dZhuangtai) {
        this.dZhuangtai = dZhuangtai;
    }

    public Integer getdId() {
        return dId;
    }

    public void setdId(Integer dId) {
        this.dId = dId;
    }

    public Integer getdUid() {
        return dUid;
    }

    public void setdUid(Integer dUid) {
        this.dUid = dUid;
    }

    public Integer getdGid() {
        return dGid;
    }

    public void setdGid(Integer dGid) {
        this.dGid = dGid;
    }

    public String getdAppraise() {
        return dAppraise;
    }

    public void setdAppraise(String dAppraise) {
        this.dAppraise = dAppraise;
    }

    public String getdTime() {
        return dTime;
    }

    public void setdTime(String dTime) {
        this.dTime = dTime;
    }

    public String getdDingdanhao() {
        return dDingdanhao;
    }

    public void setdDingdanhao(String dDingdanhao) {
        this.dDingdanhao = dDingdanhao;
    }
}
