package com.service;


import com.entity.user;

public interface UserService {
    /**
     * 用户注册
     * @param user
     * @return
     */
    public int regist(user user);

    /**
     * 用户登录
     * @param user
     * @return
     */
    public user login(user user);

    /**
     * 查找用户
     * @param name
     * @return
     */
    public user findByName(String name);

    /**
     * 通过qq查找用户
     * @param qq
     * @return
     */
    public user findByQq(String qq);
}
