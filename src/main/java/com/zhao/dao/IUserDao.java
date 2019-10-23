package com.zhao.dao;

import com.zhao.domain.IUser;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IUserDao {
    IUser findUser(String username);

    int register(IUser iUser);

    IUser login(IUser iUser);
}
