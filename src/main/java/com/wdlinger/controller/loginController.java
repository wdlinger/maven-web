package com.wdlinger.controller;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@EnableAutoConfiguration
public class loginController {
	
	@RequestMapping(value = "/",method = RequestMethod.GET)
    public String toIndex(){
        return "login";
    }
}
