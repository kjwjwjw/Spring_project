package com.itwillbs.spring_project.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;
import com.itwillbs.spring_project.service.AdminService;
import com.itwillbs.spring_project.vo.MemberVO;
import com.itwillbs.spring_project.vo.PageInfo;



@Controller
public class AdminController {

	@Autowired
	private AdminService service;
	
	// Management 리스트 및 검색 결과 리스트, 상태에 따른 리스트
	@RequestMapping(value = "Management", method = RequestMethod.GET)
	public String management(String page, @RequestParam(defaultValue = "") String value, Model model) {
		
	
		
	
		
		return "AdminPage/management/management";
	}
	
	// 해당 회원 코드의 상세 정보 출력
	@RequestMapping(value = "ManagementDetail", method = RequestMethod.GET)
	public String detail(String code, String page, String value, Model model) {
		
	
			return "HomePage/error_page/error";
	
	}
	
	// 해당 회원의 상태 변경
	@RequestMapping(value = "ManagementUpdate", method = RequestMethod.POST)
	public String managementUpdate(String code, String status, String reason, String page, String value, Model model) {
		
		// 회원 상태 정보를 수정하기 위한 service.getManagementUpdate(code, status, reason)
		
			return "HomePage/error_page/error";
		
		
	}
	
	
	@RequestMapping(value = "ManagementDelete", method = RequestMethod.GET)
	public String managementDelete(String code, String page, String value, Model model) {
		
		
	
			return "";
	
	}
	
	// 공지사항, 이벤트, QnA 목록 및 검색 결과에 따른 목록
	@RequestMapping(value = "Community", method = RequestMethod.GET)
	public String community(@RequestParam(defaultValue = "") String table, String page, String search, String searchType, Model model) {
		
		
		// 페이징 처리를 위한 변수 선언
	return "";
	}
		
		// 해당 게시물 목록 담을 변수 설정 service.selectList(pageNum, listLimit, search, searchType)
		
	
	// 해당 글의 상세 정보 출력
	@RequestMapping(value = "CommunityDetail", method = RequestMethod.GET)
	public String communityDetail(String value_num, String page, String msg, Model model) {
		
		// 데이터베이스가 int 타입으로 되어 있기 때문에 변경 필수
	return "";
		
	}
	
	// 해당 글(공지사항, 이벤트) 수정
	@RequestMapping(value = "communityModify", method = RequestMethod.GET)
	public String communityModify(String msg) {
		if(msg.equals("QnA")) {
			return "AdminPage/community/qnaModify";
		} else {
			return "AdminPage/community/communityModify";
		}
	}
	
	@RequestMapping(value = "ProductConfirm", method = RequestMethod.GET)
	public String productConfirm(String page, String type, String value, Model model) {
		
		// 페이징 처리를 위한 변수 선언
		
		
		return "AdminPage/confirm/productConfirm";
	}
	
	@RequestMapping(value = "ProductConfirmDetail", method = RequestMethod.GET)
	public String productConfirmDetail(String value_num, String page, Model model) {
		
		return "AdminPage/confirm/productConfirmView";
	}
	
	@RequestMapping(value = "ProductConfirmUpdate", method = RequestMethod.GET)
	public String productConfirmUpdate(String value_num, String status, String nickname, Model model) {
		int num = Integer.parseInt(value_num);
		
		// 받아온 값으로 업데이트가 실행이 되었는지 아닌지 판단하고 리턴 service.isProductConfirmUpdate(num, status, nickname)
		boolean isProductConfirmUpdate = false;
		
//		if(!isProductConfirmUpdate) {
//			model.addAttribute("msg", "검수확인 실패!");
//			return "HomePage/error_page/error";
//		} else {
//			return "ProductConfirm";
//		}
		
		return "ProductConfirm";
	}
	
	
	
	
	
	
	
	@RequestMapping(value = "Sales", method = RequestMethod.GET)
	public String sales() {
		return "AdminPage/sales/sales_main";
	}
	
	@RequestMapping(value = "SalesChart", method = RequestMethod.POST)
	public void salesChart(HttpServletResponse response) {
	
		
	}
}
