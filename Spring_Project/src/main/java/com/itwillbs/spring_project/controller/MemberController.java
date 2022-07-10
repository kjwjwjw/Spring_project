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
		
		MemberVO member = new MemberVO();
		
		member.setMember_nickname(join_nickname);
		member.setMember_id(join_id);
		member.setMember_passwd(passwd);
		member.setMember_email(join_email1 + join_email2);
		member.setMember_info_gender(join_gender);
		member.setMember_info_age(join_age);
		member.setMember_info_detail_like_style(like_style);
		member.setMember_info_detail_like_brand(like_brand);
		member.setMember_info_detail_like_category(like_category);
		
		
		// 이메일이 데이터베이스 안에 있는지 확인 먼저할 service.checkEmail(member.getEmail(), request)
		
//		if(service.checkEmail(member.getEmail(), request)) { // 확인해서 없으면 insert 실행
//			if(조건식) {
//				model.addAttribute("msg", "메일이 정상적으로 전송되었습니다! 인증을 완료해주세요.");
//				return "redirect:/";
//			} else {
//				model.addAttribute("msg", "이미 사용중인 이메일입니다.");
//				model.addAttribute("msg", "이미 사용중인 이메일입니다.");
//			}
//			return "redirect:/";
//		} else { // 확인해서 있으면 돌려보내기
//			model.addAttribute("msg", "이미 사용중인 이메일입니다.");
//			return "HomePage/error_page/error";
//		}
		
		return "";
	}
	
	@RequestMapping(value = "/Login", method = RequestMethod.POST)
	public String login(String login_id, String login_passwd, HttpSession session, Model model) {
		
		// 암호화 방식은 SHA-256으로 고정이기 때문에 값을 그냥 넣었습니다.
		MyMessageDigest mmd = new MyMessageDigest("SHA-256", login_passwd);
		String result = mmd.getHashedData();
		String url = "";
		
		// 해당 아이디와 패스워드가 일치하는 정보의 nickname 과 code 가져올 isLogin() 메서드
		Map<String, String> isLogin = service.isLogin(login_id, login_passwd);
		if(isLogin != null) {
			if(isLogin.get("grade_name").equals("Admin")) {
				session.setAttribute("member_code", isLogin.get("member_code"));
				session.setAttribute("member_nickname", isLogin.get("member_nickname"));
				url = "redirect:/Management";
			} else if(isLogin.get("member_service_log_status").equals("정상")) {
				session.setAttribute("member_code", isLogin.get("member_code"));
				session.setAttribute("member_nickname", isLogin.get("member_nickname"));
				url = "redirect:/Main";
			} else if(isLogin.get("member_service_log_status").equals("정지")) {
				model.addAttribute("member_service_log_login_date", isLogin.get("member_service_log_login_date"));
			
				url = "HomePage/guide_page/suspension";
			} else if(isLogin.get("member_service_log_status").equals("탈퇴")) {
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
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value = "findId", method = RequestMethod.GET)
	public String findId(String find_id_nickname, String find_id_email, Model model) {
		System.out.println(find_id_nickname);
		System.out.println(find_id_email);
		
		// nickname과 email이 일치하는 아이디 가져오기 service.isFindId(find_id_nickname, find_id_email)
		String id = "";
		
//		if(id == null) {
//			model.addAttribute("msg", "일치하는 아이디가 없습니다!");
//			return "HomePage/error_page/error";
//		} else {
//			model.addAttribute("id", id);
//			return "";
//		}
		
		model.addAttribute("id", id);
		return "";
	}
}
