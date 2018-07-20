package com.tedu.service;

import com.tedu.entity.User;

import java.util.List;

/**
 * User Service接口
 */
public interface IUserService {
    List<User> SelUserList();
    int ValidateUserByNamePwd(String username,String userpwd);
}
