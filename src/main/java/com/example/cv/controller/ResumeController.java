package com.example.cv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ResumeController {

    @RequestMapping(value = { "/resume"}, method = RequestMethod.GET)
    public String getResume() {

        return "resume";
    }
}
