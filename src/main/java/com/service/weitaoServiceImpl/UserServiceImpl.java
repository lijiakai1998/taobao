package com.service.weitaoServiceImpl;


import com.dao.UserDao;
import com.entity.user;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao dao ;

    @Override
    public int regist(user user) {
        return dao.regist(user);
    }

    @Override
    public user login(user user) {
        return dao.login(user);
    }

    @Override
    public user findByName(String name) {
        return dao.findByName(name);
    }

    @Override
    public user findByQq(String qq) {
        return dao.findByQq(qq);
    }
}
