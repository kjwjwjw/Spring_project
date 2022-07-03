package com.itwillbs.spring_project.controller;



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
		
		String val = "";
		String bnd = "";
		String ctgy = "";
		String email = request.getParameter("member_email1") + request.getParameter("member_email2");
		
		String [] style = request.getParameterValues("style");
		String [] brand = request.getParameterValues("brand");
		String [] category = request.getParameterValues("category");
		
		for(String val3 : style) {
			val += val3 + ",";
		}
		
		for(String b : brand) {
			bnd += b + ",";
		}
		
		for(String c : category) {
			ctgy += c + ",";
		}
		
		//비밀번호 암호화
		String algorithm = "SHA-256";
		
		String strPlainText = request.getParameter("join_member_passwd"); // 평문 암호
		
		
		// MyMessageDigest 객체 생성 시 생성자에 암호알고리즘명과 평문암호 전달하여 암호화 수행
		MyMessageDigest mmd = new MyMessageDigest(algorithm, strPlainText);
		
		String result = mmd.getHashedData();
		
		MemberVO memberVO = new MemberVO();
		memberVO.setMember_passwd(result);
		memberVO.setMember_email(email);
		memberVO.setMember_info_detail_like_style(val);
		memberVO.setMember_info_detail_like_style(bnd);
		memberVO.setMember_info_detail_like_style(ctgy);
		
		// MyMessageDigest 객체의 getHashedData() 메서드를 호출하여 암호화 된 암호문을 리턴받아 출력
		
		int insertCount =service.joinMember(memberVO);
		if(insertCount == 0) {
			System.out.println("가입 실패");
			model.addAttribute("msg", "가입 실패!");
			return "member/fail_back";
			
		} else {
			System.out.println("가입 성공");
			return "redirect:/";
			
		}
		
	}
	
	@RequestMapping(value = "Login", method = RequestMethod.POST)
	public String login(String login_id, String login_passwd, HttpSession session, Model model) {
		
		
		MyMessageDigest mmd = new MyMessageDigest("SHA-256", login_passwd);
		String result = mmd.getHashedData();
		String url = "";
		
		// 해당 아이디와 패스워드가 일치하는 정보의 nickname 과 code 가져올 isLogin() 메서드
		Map<String, String> isLogin = service.isLogin(login_id, result);
		if(isLogin != null) {
			if(isLogin.get("level").equals("Admin")) {
				session.setAttribute("code", isLogin.get("code"));
				session.setAttribute("nickname", isLogin.get("nickname"));
				url = "redirect:/Management";
			} else if(isLogin.get("status").equals("정상")) {
				session.setAttribute("code", isLogin.get("code"));
				session.setAttribute("nickname", isLogin.get("nickname"));
				url = "redirect:/Main";
			} else if(isLogin.get("status").equals("정지")) {
				model.addAttribute("login_date", isLogin.get("login_date"));
				model.addAttribute("reason", isLogin.get("reason"));
				url = "HomePage/guide_page/suspension";
			} else if(isLogin.get("status").equals("탈퇴")) {
				url = "redirect:HomePage/guide_page/withdrawal";
			}
		} else {
			model.addAttribute("msg", "로그인 실패");
			url = "HomePage/error_page/error";
		}
		
		return url;
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
