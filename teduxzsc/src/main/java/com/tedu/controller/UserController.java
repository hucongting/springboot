package com.tedu.controller;

import com.tedu.dao.UserMapper;
import com.tedu.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserMapper userMapper;

    @RequestMapping("/all")
    public String SelUserList(){
        List<User> userList = userMapper.SelUserList();
        System.out.println(userList);
        return "user_list";
    }


    /**
     * 验证
     * @return
     */
    @RequestMapping("/validateUser")
    public String ValiDateUserByNamePwd(@RequestParam String username, @RequestParam String userpwd, HttpServletResponse response) throws IOException {
        PrintWriter out = response.getWriter();
        int result = userMapper.ValidateUserByNamePwd(username,userpwd);
        System.out.println(result);
        if(result == 0){
            out.write("falied");
        }
        return null;
    }
}
