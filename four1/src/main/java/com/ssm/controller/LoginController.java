package com.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
    @RequestMapping("check.do")
    public String check(String username,String password){
        int i=3/0;
        return "login";
    }
}
