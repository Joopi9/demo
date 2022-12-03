package com.example.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.mapper.UserInfoMapper;
import com.example.demo.vo.UserInfoVO;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class UserInfoService {

	private final UserInfoMapper userInfoMapper;
	
	
	public int insertUser(UserInfoVO userInfoVo) {
		return userInfoMapper.insertUser(userInfoVo);
	}
	
	public int updateUser(UserInfoVO userInfoVo) {
		return userInfoMapper.updateUser(userInfoVo);
	}
	
	public UserInfoVO selectUser(UserInfoVO userInfoVo) {
		return userInfoMapper.selectUser(userInfoVo);
	}
	
	public List<UserInfoVO> selectUserList(){
		return userInfoMapper.selectUserList();
	}
	
	public int deleteUser(UserInfoVO userInfoVo) {
		return userInfoMapper.deleteUser(userInfoVo);
	}
}
