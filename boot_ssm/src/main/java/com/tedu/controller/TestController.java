package com.tedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
        return "/index";
    }
}
