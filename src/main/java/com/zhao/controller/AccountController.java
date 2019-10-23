package com.zhao.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhao.domain.Account;
import com.zhao.service.AccontService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/account")
public class AccountController {
    @Autowired
    private AccontService accountService;

    @RequestMapping("/list")
    public String findAllAccount(@RequestParam(value="pn", defaultValue="1")Integer pn, Model model){
        //从第几页开始，每页查询3条
        PageHelper.startPage(pn,1);
        List<Account> accountList= accountService.findAllList();
        PageInfo<Account> pageInfo=new PageInfo<>(accountList,1);
        for (Account account : pageInfo.getList()) {
            System.out.println(account);
        }
        model.addAttribute("page",pageInfo);
        return "account";

    }


}
