package com.zhao.dao;

import com.zhao.domain.User;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface UserDao {
    List<User> findAll();

    void save(User user);
}
