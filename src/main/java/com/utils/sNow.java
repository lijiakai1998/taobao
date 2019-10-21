package com.utils;

import java.util.Date;
import java.util.UUID;

public class sNow {
    public String getNow() {
        Date vNow = new Date();
        String sNow = "";
        sNow += vNow.getYear();
        sNow += vNow.getMonth() + 1;
        sNow += vNow.getDate();
        sNow += vNow.getHours();
        sNow += vNow.getMinutes();
        sNow += vNow.getSeconds();
        sNow += vNow.getDate();
        UUID uuid = UUID.randomUUID();
        String uuidd = uuid.toString().replaceAll("-", "");
        sNow = sNow + uuidd;
        return sNow;
    }
}
