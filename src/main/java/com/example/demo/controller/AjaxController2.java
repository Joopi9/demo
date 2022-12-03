package com.example.demo.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AjaxController2 {
	
	@GetMapping("/views/**")
	public String getPage(HttpServletRequest request) {
		return request.getRequestURI().substring(6);
	}
	
	@GetMapping("/user1")
	public ModelAndView getUser(@RequestParam("uiNum")String uiNum, @RequestParam("uiName")String uiName) {
		ModelAndView mv = new ModelAndView("jsonView");
//		ModelAndView mv = new ModelAndView();
		mv.addObject("uiNum", uiNum);
		mv.addObject("uiName", uiName);
//		mv.setViewName("/model-get-result");
		mv.setViewName("/ajax-get");
		return mv;
	}
	
	@GetMapping("/user2")
	@ResponseBody
	public Map<String,String> getUserAjax(@RequestParam("uiNum")String uiNum, @RequestParam("uiName")String uiName){
		Map<String, String> map = new HashMap<String,String>();
		map.put("uiNum", uiNum);
		map.put("uiName", uiName);
		return map;
	}
	
	@PostMapping("/userPost")
	@ResponseBody
	public Map<String,String> getUserPost(@RequestParam("uiNum")String uiNum, @RequestParam("uiName")String uiName){
		Map<String, String> map = new HashMap<>();
		map.put("uiNum", uiNum);
		map.put("uiName", uiName);
		return map;
	}
}
