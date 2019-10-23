package com.zhao.service;

import com.zhao.domain.User;

import java.util.List;

public interface UserService {
    List<User> findAll();

    void save(User user);
}
