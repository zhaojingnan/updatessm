package com.zhao.service.impl;

import com.zhao.dao.UserDao;
import com.zhao.domain.User;
import com.zhao.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("userService")
public class UserServiceImpl implements UserService {
   @Autowired
    private UserDao userDao;

    @Override
    public List<User> findAll() {
       return  userDao.findAll();

    }

    @Override
    public void save(User user) {
        userDao.save(user);
    }
}
