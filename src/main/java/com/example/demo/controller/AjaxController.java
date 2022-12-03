//package com.example.demo.controller;
//
//import java.io.IOException;
//import java.util.HashMap;
//import java.util.Map;
//
//import javax.servlet.http.HttpServletRequest;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.servlet.ModelAndView;
//
//import com.example.demo.vo.UserVO;
//import com.fasterxml.jackson.databind.ObjectMapper;
//
//@Controller
//public class AjaxController {
//	
//	@GetMapping("/")
//	public String goHome() {
//		return "/ajax-body";
//	}
//
//	@GetMapping("/views/**")
//	public String goPage(HttpServletRequest request) {
//		return request.getRequestURI().substring(6);
//	}
//	
//	@GetMapping("/user1")
//	public ModelAndView getLogin(@RequestParam("uiNum")String uiNum,
//						   		 @RequestParam("uiName")String uiName) {
//		ModelAndView mv = new ModelAndView();
//		mv.addObject("uiNum", uiNum);
//		mv.addObject("uiName", uiName);
//		mv.setViewName("/model-get-result");
//		return mv;
//	}
//
//	
//	@GetMapping("/user2")
//	public @ResponseBody Map<String,String> getLogin2(@RequestParam("uiNum")String uiNum,
//						   		 					@RequestParam("uiName")String uiName) {
//		Map<String,String> map = new HashMap<>();
//		map.put("uiNum", uiNum);
//		map.put("uiName", uiName);
//		return map;
//	}
//	
//	@PostMapping("/userPost")
//	@ResponseBody
//	public Map<String,String> postLogin(HttpServletRequest request) throws IOException {
//		Map<String,String> map = new HashMap<>();
//		map.put("uiNum", request.getParameter("uiNum"));
//		map.put("uiName", request.getParameter("uiName"));
//		return map;
//	}
//	
//	@GetMapping("/userBody")
//	@ResponseBody
//	public UserVO bodyLogin(@RequestBody UserVO userVo) {
//		UserVO user = new UserVO();
//		user.setUiNum(userVo.getUiNum());
//		user.setUiName(userVo.getUiName()); 
//		return user;
//	}
//}
