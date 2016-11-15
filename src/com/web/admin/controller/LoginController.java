package com.web.admin.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
			System.out.println("로그인 성공!!");
			mav.setViewName("redirect:/index");	// redirect:   경로는 뷰설정이 애초에 다른 매핑잡아둔 경로로 요청 전환
		}else {
			mav.setViewName("t:/index");
		}
		return mav;
	}
	
	@RequestMapping("/")
	@ResponseBody
	public ModelAndView editPass(HttpSession session,HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		String uid = (String)session.getAttribute("userId");
		String newpass = request.getParameter("");
		Map map = null;
		if(uid != null || !uid.equals("")) {
			mav.setViewName("메인페이지");
		}
		
		map = new HashMap();
		map.put("id", uid);
		map.put("pass", newpass);
		boolean rst = ls.editPass(map);
		
		if(rst) {
			mav.addObject("", "");
		}else {
			mav.addObject("", "");
		}
		mav.setViewName("");
		
		return mav;
		
	}
	
	
	// 개인정보 수정
	@RequestMapping("/")
	@ResponseBody
	public ModelAndView editUser(HttpSession session,HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		String uid = (String)session.getAttribute("userId");
		String newpass = request.getParameter("");
		Map map = null;
		
		if(uid != null || !uid.equals("")) {
			mav.setViewName("메인페이지");
		}
		
		map = new HashMap();
		
		boolean rst = ls.editPass(map);
		
		if(rst) {
			mav.addObject("", "");
		}else {
			mav.addObject("", "");
		}
		mav.setViewName("");
		
		return mav;
		
	}
	
}
