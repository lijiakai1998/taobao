package com.entity;

import lombok.Data;
import org.springframework.stereotype.Repository;

@Repository
public class user {
    private Integer uId;
    private String uNiCheng;
    private String uPassword;
    private String uSex;
    private String uQq;
    private String uImage;
    private String uRealName;
    private String uPostcode;
    private String uAddress;
    private String uTel;

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public String getuNiCheng() {
        return uNiCheng;
    }

    public void setuNiCheng(String uNiCheng) {
        this.uNiCheng = uNiCheng;
    }

    public String getuPassword() {
        return uPassword;
    }

    public void setuPassword(String uPassword) {
        this.uPassword = uPassword;
    }

    public String getuSex() {
        return uSex;
    }

    public void setuSex(String uSex) {
        this.uSex = uSex;
    }

    public String getuQq() {
        return uQq;
    }

    public void setuQq(String uQq) {
        this.uQq = uQq;
    }

    public String getuImage() {
        return uImage;
    }

    public void setuImage(String uImage) {
        this.uImage = uImage;
    }

    public String getuRealName() {
        return uRealName;
    }

    public void setuRealName(String uRealName) {
        this.uRealName = uRealName;
    }

    public String getuPostcode() {
        return uPostcode;
    }

    public void setuPostcode(String uPostcode) {
        this.uPostcode = uPostcode;
    }

    public String getuAddress() {
        return uAddress;
    }

    public void setuAddress(String uAddress) {
        this.uAddress = uAddress;
    }

    public String getuTel() {
        return uTel;
    }

    public void setuTel(String uTel) {
        this.uTel = uTel;
    }

    @Override
    public String toString() {
        return "user{" +
                "uId=" + uId +
                ", uNiCheng='" + uNiCheng + '\'' +
                ", uPassword='" + uPassword + '\'' +
                ", uSex='" + uSex + '\'' +
                ", uQq='" + uQq + '\'' +
                ", uImage='" + uImage + '\'' +
                ", uRealName='" + uRealName + '\'' +
                ", uPostcode='" + uPostcode + '\'' +
                ", uAddress='" + uAddress + '\'' +
                ", uTel='" + uTel + '\'' +
                '}';
    }
}
