package com.web.admin.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.web.admin.model.LoginService;

@Controller
public class LoginController {
	
	@Autowired
	LoginService ls;
	
	@RequestMapping("/user/login")
	public ModelAndView proceed(HttpSession session, 
			@RequestParam(name="userid")String userid, String userpass){
		ModelAndView mav = new ModelAndView();
		int rst = ls.existCheck(userid, userpass);
		if(rst==1) {
			session.setAttribute("userId", userid);
			System.out.println("�α��� ����!!");
			mav.setViewName("redirect:/index");	// redirect:   ��δ� �伳���� ���ʿ� �ٸ� ������Ƶ� ��η� ��û ��ȯ
		}else {
			mav.setViewName("t:/index");
		}
		return mav;
	}
	
}
