package com.example.demo.controller;

import java.util.List;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.service.UserInfoService;
import com.example.demo.vo.UserInfoVO;

import lombok.AllArgsConstructor;

@RestController
@AllArgsConstructor
public class UserInfoController {

	private final UserInfoService userInfoService;

	@PostMapping("/userInfo")
	public int insertUser(@RequestBody UserInfoVO userInfoVo) {
		return userInfoService.insertUser(userInfoVo);
	}

	@PatchMapping("/userInfo")
	public int updateUser(@RequestBody UserInfoVO userInfoVo) {
		return userInfoService.updateUser(userInfoVo);
	}

	@GetMapping("/userInfo")
	public UserInfoVO selectUser(UserInfoVO userInfoVo) {
		return userInfoService.selectUser(userInfoVo);
	}

	@GetMapping("/userInfoList")
	public List<UserInfoVO> selectUserList() {
		return userInfoService.selectUserList();
	}

	@DeleteMapping("/userInfo")
	public int deleteUser(@RequestBody UserInfoVO userInfoVo) {
		return userInfoService.deleteUser(userInfoVo);
	}
}
