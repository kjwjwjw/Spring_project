package com.itwillbs.spring_project.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.spring_project.service.MemberService;
import com.itwillbs.spring_project.vo.MemberVO;

import googleSMTPAuthenticator.MyMessageDigest;



@Controller
public class MemberController {
	
	@Autowired
	private MemberService service;

	@RequestMapping(value = "/Join", method = RequestMethod.POST)
	public String checkEmail(HttpServletRequest request, String join_nickname, String join_id, String join_passwd, String join_email1, String join_email2, String join_gender, String join_age, String[] join_style, String[] join_brand, String[] join_category, Model model) {
		String like_style = "";
		String like_brand = "";
		String like_category = "";
		
		// 암호화할 암호화 방식 설정
		String algorithm = "SHA-256";
		
		// 암호화할 클래스 인스턴스 생성
		MyMessageDigest mmd = new MyMessageDigest(algorithm, join_passwd);
		// 암호화된 passwd 저장
		String passwd = mmd.getHashedData();
		
		for(String s : join_style) {
			like_style += s + ",";
		}
		
		for(String s : join_brand) {
			like_brand += s + ",";
		}
		
		for(String s : join_category) {
			like_category += s + ",";
		}
		
		

		
		return "";
	}
	
	@RequestMapping(value = "Login", method = RequestMethod.POST)
	public String login(String login_id, String login_passwd, HttpSession session, Model model) {
	
		
		return "";
	}
	
	@RequestMapping(value = "Logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		return "";
	}
	
	@RequestMapping(value = "findId", method = RequestMethod.GET)
	public String findId(String find_id_nickname, String find_id_email, Model model) {
		
		return "";
	}
}
