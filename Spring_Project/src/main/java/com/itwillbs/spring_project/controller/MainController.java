package com.itwillbs.spring_project.controller;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.spring_project.service.MainService;
import com.itwillbs.spring_project.vo.PageInfo;
import com.itwillbs.spring_project.vo.SellerVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;



@Controller
public class MainController {
	
	@Autowired
	private MainService service;
	
	@RequestMapping(value = "Main", method = RequestMethod.GET)
	public String Join() {
		
		return "MainPage/first_page/index";
	}
	
	@RequestMapping(value = "/MainPage/sell/sell_write", method = RequestMethod.POST)
	public String writePost(@ModelAttribute SellerVO product, Model model) {
		
		int insertCount = service.registArticle(product);
		
		if(insertCount ==0) {
			model.addAttribute("msg", "글 등록 실패!");
			return "fail_back";
		} else {
			return "redirect:/board/list";
		}
		
	
	
	}
	
	
	@RequestMapping(value = "/MainPage/sell/sell_list", method = RequestMethod.GET)
	public String list(@RequestParam(defaultValue = "") String searchType, @RequestParam(defaultValue = "") String keyword,@RequestParam(defaultValue = "1") int pageNum, Model model) {
		// 페이징 처리에 필요한 전체 게시물 수 조회- getBoardListCount() 메서드
		// => 파라미터: 없음, 리턴타입 : int(listCount)
		
		// 검색 기능을 포함하는 경우 총 게시물 수 조회 시 널스트링 전달
		return "";
	}
		
	
	// 3-2 글목록
	@RequestMapping(value = "/board/list", method = RequestMethod.POST)
	public String listSearch(@RequestParam String searchType, @RequestParam String keyword, @RequestParam int pageNum, Model model) {
		

		
		return "board/qna_board_list";
	}
	
	
	@RequestMapping(value="/board/detail" , method=RequestMethod.GET)
	public String detail(@RequestParam int board_num, Model model ) {
	
		return "board/qna_board_view";
	}
	
	// 5. 글 삭제 폼 - GET
		@RequestMapping(value = "/board/delete", method = RequestMethod.GET)
		public String delete() {
			return "board/qna_board_delete";
		}
	
	// 6.글 삭제 비즈니스 로직 - POST
	
	
}
