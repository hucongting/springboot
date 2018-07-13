package com.tedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class LoginController {

    //@RequestMapping("/login")
    @PostMapping("/user/login")
    public String validateLogin(@RequestParam("name") String username, @RequestParam("password") String password, Map<String,Object> map){
        System.out.println(username+"====="+password);
        if(!StringUtils.isEmpty(username) && "123456".equals(password)){
            return "index";
        }else{
            map.put("msg","用户名密码错误");
            return "login";
        }
    }

}
