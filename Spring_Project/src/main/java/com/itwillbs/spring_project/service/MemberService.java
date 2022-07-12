package com.itwillbs.spring_project.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.spring_project.mapper.MemberMapper;
import com.itwillbs.spring_project.vo.MemberVO;



@Service
public class MemberService {

	@Autowired
	private MemberMapper mapper;
	
	public boolean checkNickname(String nickname) {
		return false;
	}

	public Map<String, String> isLogin(String login_id, String login_passwd) {
		return mapper.isLogin(login_id, login_passwd);
	}

	
}
