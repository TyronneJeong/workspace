package com.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class loginController {
	
	@RequestMapping("/login")
    public ModelAndView main() {
        return new ModelAndView("login", "message", "successfully done!");
    }	
}
