package com.zhao.service.impl;

import com.zhao.dao.IUserDao;
import com.zhao.domain.IUser;
import com.zhao.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.sound.midi.Soundbank;
import java.util.List;

@Service("iUserService")
public class IUserServiceImpl implements IUserService {
    @Autowired
    private IUserDao iUserDao;

    /**根据用户名查找用户
     *
     * @param username
     * @return
     */
    @Override
    public IUser findUser(String username) {
        IUser iUser=iUserDao.findUser(username);
        return  iUser;
    }

    /**
     * 注册用户
     * @param iUser
     * @return
     */
    @Override
    public int register(IUser iUser) {
       int x=iUserDao.register(iUser);
       return 1;

    }

    /**
     * 根据用户名或邮箱登录
      * @param iUser
     * @return
     */
    @Override
    public IUser login(IUser iUser) {
        return iUserDao.login(iUser);
    }
}
