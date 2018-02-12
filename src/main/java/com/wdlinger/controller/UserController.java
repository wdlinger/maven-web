package com.wdlinger.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wdlinger.dao.UserDao;
import com.wdlinger.model.User;

@Controller
public class UserController {
	
	@Autowired
	private UserDao userDao;
	
	/**
	 * 注册
	 * @param request
	 * @param name	用户名
	 * @param password	密码
	 * @param passwords2	次密码
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/user/register", method = RequestMethod.POST)
	public String save(HttpServletRequest request, String name, String password, String passwords, ModelMap model){
	
		if (StringUtils.isBlank(name) || StringUtils.isBlank(password) || StringUtils.isBlank(passwords)){
			model.addAttribute("message", "用户名或密码为空！");
			return "404";
		} else if (!password.equals(passwords)){
			model.addAttribute("message", "两次密码不一致！");
			return "404";
		} 
		
		User user =new User();
		user.setUsername(name);
		user.setUserpwd(password);
		User users = userDao.save(user);
		
		if (users.getUserId() != null){
			return "login";
		} else {
			model.addAttribute("message", "注册失败！请稍后再试！");
			return "404";
		}
	}
	
	@RequestMapping(value = "/user/isUser", method = RequestMethod.GET)
	public String isUser(HttpServletRequest request){
//		String user = userDao.getByUserName();
		return null;
	}
}
