package com.example.demo.mapper;

import java.util.List;

import com.example.demo.vo.UserInfoVO;

public interface UserInfoMapper {

	int insertUser(UserInfoVO userInfoVo);

	int updateUser(UserInfoVO userInfoVo);
	
	UserInfoVO selectUser(UserInfoVO userInfoVo);
	
	List<UserInfoVO> selectUserList();
	
	int deleteUser(Long num);
}
