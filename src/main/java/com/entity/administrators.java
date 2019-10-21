package com.entity;

import lombok.Data;
import org.springframework.stereotype.Component;

@Component("administrators")
@Data
public class administrators {
    private Integer dId;
    private String dName;
    private String dPassword;

    public Integer getdId() {
        return dId;
    }

    public void setdId(Integer dId) {
        this.dId = dId;
    }

    public String getdName() {
        return dName;
    }

    public void setdName(String dName) {
        this.dName = dName;
    }

    public String getdPassword() {
        return dPassword;
    }

    public void setdPassword(String dPassword) {
        this.dPassword = dPassword;
    }
}
