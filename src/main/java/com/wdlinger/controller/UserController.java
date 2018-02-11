package com.wdlinger.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.wdlinger.dao.UserDao;
import com.wdlinger.model.User;

@Controller
public class UserController {
	
	@Autowired
	private UserDao userDao;
	
	@RequestMapping(value = "/user/register", method = RequestMethod.POST)
	public void save(HttpServletRequest request, String name, String password, ModelMap model){
		System.out.println(name);
		System.out.println(password);
		if (name != null){
//			user = userDao.save(user);
		}
	}
}
