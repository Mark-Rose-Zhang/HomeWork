package org.Zhang.service;

public interface UserService {
    /**
     * 通过用户名和密码登录系统
     * @param code 用户对应编号
     * @param password 用户密码
     * @return 若为true则登陆成功 否则登录失败
     */
    public boolean login(String code , String password);
}
