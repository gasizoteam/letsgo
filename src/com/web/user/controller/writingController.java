package com.web.user.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.web.user.model.writingService;

@Controller
public class writingController {
	@Autowired
	writingService ws;
	
	@RequestMapping("/write")
	public ModelAndView write(String title,String text,String maincate,String subcate, HttpSession session){
		ModelAndView mav=new ModelAndView();
		String id=(String)session.getAttribute("userId");
		HashMap map=new HashMap();
		map.put("title",title);
		map.put("text",text);
		map.put("maincate", maincate);
		map.put("subcate", subcate);
		map.put("id", id);
		
		boolean  rst=ws.writingDB(map);
		if(rst){
			mav.setViewName("/write/success");
		}else{
			mav.setViewName("/write/fail");
		}
		return mav;
	}
}
