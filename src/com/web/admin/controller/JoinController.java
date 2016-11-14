package com.web.admin.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.web.admin.model.JoinData;
import com.web.admin.model.JoinService;

@Controller
public class JoinController {

	@Autowired
	JoinService js;
	
	@RequestMapping("/user/join")
	public ModelAndView login(){
		ModelAndView mav = new ModelAndView();
			mav.setViewName("t:join");
		return mav;
	}
	
	@RequestMapping("/user/joinConfirm")
	public ModelAndView LoginAuth(HttpServletRequest req){
		ModelAndView mav = new ModelAndView();
			mav.setViewName("t:joinConfirm");
			
			HashMap map = new HashMap<>();
				map.put("userpass", req.getParameter("userpass"));
				map.put("username", req.getParameter("username"));
				map.put("userphone", req.getParameter("userphone"));
				map.put("usergender", req.getParameter("usergender"));
				map.put("userid", req.getParameter("userid"));

				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				try {
					java.util.Date date = sdf.parse(req.getParameter("userbirth"));
					map.put("userbirth", date);
				} catch (ParseException e) {
					e.printStackTrace();
				}
				
			
			boolean p = js.register(map);
			mav.addObject("rst", p);
			System.out.println(p);
			
		return mav;
	}
	
}
