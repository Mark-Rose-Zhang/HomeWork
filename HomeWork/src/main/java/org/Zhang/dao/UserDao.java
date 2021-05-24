package org.Zhang.dao;

import org.Zhang.pojo.User;

public interface UserDao {

    /**
     * 查询一个用户
     * @param code 用户名
     * @param password 用户密码
     * @return 一个User用户
     */
    public User queryUser(String code , String password);

}
