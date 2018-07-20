package com.tedu.service.impl;

import com.tedu.dao.UserMapper;
import com.tedu.entity.User;
import com.tedu.service.IUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * User Service层
 */
@Service
public class UserServiceImpl implements IUserService {

    @Resource
    private UserMapper userMapper;

    @Override
    public List<User> SelUserList() {
        return userMapper.SelUserList();
    }

    @Override
    public int ValidateUserByNamePwd(String username, String userpwd) {
        return userMapper.ValidateUserByNamePwd(username,userpwd);
    }
}
