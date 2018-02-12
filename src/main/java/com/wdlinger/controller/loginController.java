package com.wdlinger.controller;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@EnableAutoConfiguration
public class loginController {
	
	@RequestMapping(value = "/login",method = RequestMethod.GET)
    public String login(){
        return "login";
    }
	
	@RequestMapping(value = "/register",method = RequestMethod.GET)
    public String register(){
        return "register";
    }
	
	@RequestMapping(value = "/error",method = RequestMethod.GET)
	public String error(){
		return "404";
	}
}
