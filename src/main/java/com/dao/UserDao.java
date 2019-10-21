package com.dao;


import com.entity.user;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {

    @Autowired
    private JdbcTemplate template ;

    public int regist(user user) {
        if ("".equals(user.getuImage())){
            return 0;
        }
        try {
            //定义sql
            String sql = "insert into user (u_niCheng, u_password, u_sex, u_qq, u_image) values (?, ?, ?, ?, ?)";
            //调用方法
            int count = template.update(sql, user.getuNiCheng(), user.getuPassword(), user.getuSex(), user.getuQq(), user.getuImage());
            return count;
        } catch (DataAccessException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public user login(user user) {
        try {
            //定义sql语句
            String sql = "select * from user where u_niCheng = ? and u_password = ?";
            //调用方法
            return template.queryForObject(sql, new BeanPropertyRowMapper<user>(user.class), user.getuNiCheng(), user.getuPassword());
        } catch (DataAccessException e) {
            e.printStackTrace();
            return null;
        }
    }

    public user findByName(String name) {
        try {
            //定义sql
            String sql = "select * from user where u_niCheng = ?";
            //调用方法
            return template.queryForObject(sql, new BeanPropertyRowMapper<user>(user.class), name);
        } catch (DataAccessException e) {
            e.printStackTrace();
            return null;
        }
    }

    public user findByQq(String qq) {
        try {
            //定义sql
            String sql = "select * from user where u_qq = ?";
            return template.queryForObject(sql, new BeanPropertyRowMapper<user>(user.class), qq);
        } catch (DataAccessException e) {
            e.printStackTrace();
            return null;
        }
    }
}
