package com.entity;

import lombok.Data;

@Data
public class collect {
    private Integer cId;
    private Integer cUid;
    private Integer cGid;

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public Integer getcUid() {
        return cUid;
    }

    public void setcUid(Integer cUid) {
        this.cUid = cUid;
    }

    public Integer getcGid() {
        return cGid;
    }

    public void setcGid(Integer cGid) {
        this.cGid = cGid;
    }
}
