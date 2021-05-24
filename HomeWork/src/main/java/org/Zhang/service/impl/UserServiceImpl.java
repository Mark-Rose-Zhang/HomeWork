package org.Zhang.service.impl;

import org.Zhang.dao.UserDao;
import org.Zhang.dao.impl.UserDaoImpl;
import org.Zhang.pojo.User;
import org.Zhang.service.UserService;

public class UserServiceImpl implements UserService {
    private UserDao userDao= new UserDaoImpl();
    @Override
    public boolean login(String code, String password) {
        User user = userDao.queryUser(code, password);
        if (user == null) {
            return false;
        }else {
            return true;
        }
    }
}
