package com.zhao.service;

import com.zhao.domain.IUser;

public interface IUserService {
    IUser findUser(String username);

    int register(IUser iUser);

    IUser login(IUser iUser);
}
