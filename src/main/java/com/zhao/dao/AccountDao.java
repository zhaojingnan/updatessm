package com.zhao.dao;

import com.zhao.domain.Account;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface AccountDao {
    List<Account> findAll();
}
