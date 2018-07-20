package com.tedu.dao;

import com.tedu.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 用户dao接口
 */
public interface UserMapper {

    List<User> SelUserList();
    /**
     * 验证用户
     */
    int ValidateUserByNamePwd(@Param("username") String username, @Param("userpwd") String userpwd);
}
