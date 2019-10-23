package com.zhao.service.impl;

import com.zhao.dao.AccountDao;
import com.zhao.domain.Account;
import com.zhao.service.AccontService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("accountService")
public class AccountServiceImpl implements AccontService{
    @Autowired
    private AccountDao accountDao;

    @Override
    public List<Account> findAllList() {
       return accountDao.findAll();
    }
}
