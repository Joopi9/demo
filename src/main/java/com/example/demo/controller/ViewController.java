package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ViewController {

	@GetMapping("/")
	public String goHome() {
		return "views/index";
	}
	
	@GetMapping("/views/**")
	public void goPage() {}
	
}
