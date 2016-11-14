package com.web.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class testGo {
	@RequestMapping("/index")
	public String source01() {
		return "t:index";
	}
}
