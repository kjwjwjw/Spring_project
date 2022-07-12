package com.itwillbs.spring_project.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.spring_project.vo.MemberVO;


public interface MemberMapper {

	Map<String, String> isLogin(String login_id, String login_passwd);
		

}
