package com.tedu.controller;

import com.tedu.entity.Person;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/boot")
public class TestController {

    @RequestMapping("/test")
    @ResponseBody
    public String test(){
        System.out.println("boot...test........");
        return "Hello MyBoot!!";
    }

    @RequestMapping("/index")
    public String hello(HttpServletRequest request){
        System.out.println("index......");
        request.setAttribute("name","test ...... name");
        request.setAttribute("list", Arrays.asList("toms","lucys","jackys"));
        List<String> list_test = new ArrayList<>();
        list_test.add("我是");
        list_test.add("你");
        list_test.add("爸爸");
        request.setAttribute("list_test",list_test);

        Person person = new Person(1,"zhangsan","123456");
        Person person2 = new Person(1,"lisi","123123");
        List<Person> personList = new ArrayList<Person>();
        personList.add(person);
        personList.add(person2);
        request.setAttribute("person_list",personList);
        return "/index";
    }
}
