package com.entity;

import lombok.Data;

@Data
public class shoppingCat {
    private Integer sId;
    private Integer sUid;
    private Integer sGid;
    private Integer sCount;
    public Integer getsCount() {
        return sCount;
    }

    public void setsCount(Integer sCount) {
        this.sCount = sCount;
    }


    public Integer getsId() {
        return sId;
    }

    public void setsId(Integer sId) {
        this.sId = sId;
    }

    public Integer getsUid() {
        return sUid;
    }

    public void setsUid(Integer sUid) {
        this.sUid = sUid;
    }

    public Integer getsGid() {
        return sGid;
    }

    public void setsGid(Integer sGid) {
        this.sGid = sGid;
    }
}
