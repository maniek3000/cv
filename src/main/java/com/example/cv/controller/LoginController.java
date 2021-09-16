package com.example.cv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

    @RequestMapping(value = { "/login"}, method = RequestMethod.GET)
    public String getLogin() {

        return "logReg/login";
    }
    @RequestMapping(value = {"/register"}, method = RequestMethod.GET)
    public String getRegister(){
        return "logReg/register";
    }

}
