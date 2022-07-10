package com.itwillbs.spring_project.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.spring_project.vo.MemberVO;


public interface MemberMapper {

	public Map<String, String> isLogin(@Param("login_id") String login_id, @Param("login_passwd") String login_passwd);

	public int insertMember(MemberVO memberVO);
	
}
