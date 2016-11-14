package com.web.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/test")
public class testGo {
	@RequestMapping("/01")
	public String source01() {
		return "t01";
	}
}
