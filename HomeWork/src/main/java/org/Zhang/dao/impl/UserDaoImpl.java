package org.Zhang.dao.impl;

import org.Zhang.dao.BaseDao;
import org.Zhang.dao.UserDao;
import org.Zhang.pojo.User;

public class UserDaoImpl extends BaseDao implements UserDao {

    @Override
    public User queryUser(String code , String password) {
        String sql = "select `userid` id,`usercode` code, `userpwd` password,nickname nickName from userinfo where usercode = ? and userpwd = ?";
        User user = this.queryForOne(User.class, sql, code, password);
        return user;
    }
}
