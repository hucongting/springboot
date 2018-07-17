package com.tedu.controller;

import com.tedu.entity.Person;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class LoginController {

    //@RequestMapping("/login")
    @PostMapping("/login")
    public String validateLogin(@RequestParam("name") String username, @RequestParam("password") String password, Map<String,Object> map, HttpSession session){
        System.out.println(username+"====="+password);
        if(!StringUtils.isEmpty(username) && "123456".equals(password)){
            System.out.println("-----success");
            session.setAttribute("loginUser",username);
            return "index";
        }else{
            map.put("msg","用户名密码错误");
            return "login";
        }
    }

    /**
     * Test Person List
     * @return
     */
    @RequestMapping("/admin")
    public String pageAdmin(Model model){
        Person person = new Person(1,"zhangsan","123456",new Date());
        Person person2 = new Person(2,"lisi","123123",new Date());
        Person person3 = new Person(3,"wangwu","232323",new Date());
        Person person4 = new Person(4,"zhaoliu","454545",new Date());
        List<Person> personList = new ArrayList<>();
        personList.add(person);
        personList.add(person2);
        personList.add(person3);
        personList.add(person4);
        model.addAttribute("persons",personList);
        return "admin";
    }

    /**
     * add Person Page
     * @return
     */
    @RequestMapping("/add_page")
    public String addAdminPage(){
        return "create";
    }

    @RequestMapping("/addperson")
    public void addAdminCommit(
//            @RequestParam String id,@RequestParam String username,
//            @RequestParam String userpwd,@RequestParam String createtime,
//            HttpServletResponse response
            Person person
    ) throws IOException {
        System.out.println(person);
    }

    @DeleteMapping("/emp/{id}")
    public String delAdmin(@PathVariable Integer id){
        System.out.println(id);
        return "admin";
    }

}
