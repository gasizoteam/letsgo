package com.web.admin.controller;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LogoutController {

	@RequestMapping("/user/loginOut")
	public ModelAndView logout(HttpSession session){
		ModelAndView mav = new ModelAndView();
			mav.setViewName("t:index");
				session.invalidate();
		return mav;
	}
	
}
