package com.itwillbs.spring_project.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.spring_project.mapper.AdminMapper;
import com.itwillbs.spring_project.vo.MemberVO;
import com.itwillbs.spring_project.vo.NoticeImgFileVO;
import com.itwillbs.spring_project.vo.NoticeVO;
import com.itwillbs.spring_project.vo.SellerVO;



@Service
public class AdminService {

	@Autowired
	private AdminMapper adminMapper;

	public int selectListCount(String table, String search, String searchType) {
		return adminMapper.selectListCount(table, search, searchType);
	}

	public List<Map<String, String>> getManagementList(int startRow, int listLimit, String value) {
		return adminMapper.selectManagementList(startRow, listLimit, value);
	}

	public Map<String, String> getStatusCount() {
		return adminMapper.getStatusCount();
	}

	public MemberVO getMemberDetail(String member_code) {
		return adminMapper.getMemberDetail(member_code);
	}

	public int getManagementUpdate(String code, String status, String reason) {
		return adminMapper.getManagementUpdate(code, status, reason);
	}

	public int isDelete(String code) {
		return adminMapper.isDelete(code);
	}

	public ArrayList<NoticeVO> selectList(int startRow, int listLimit, String table, String search, String searchType) {
		return adminMapper.selectList(startRow, listLimit, table, search, searchType);
	}

	public NoticeVO getArticle(int num, String msg) {
		return adminMapper.getArticle(num, msg);
	}

	public ArrayList<NoticeImgFileVO> getImg(int num) {
		return adminMapper.getImg(num);
	}

	public SellerVO getListCountType() {
		return adminMapper.getListCountType();
	}

	public ArrayList<SellerVO> selectproductConfirmList(int pageNum, int listLimit, String type, String value) {
		return adminMapper.selectproductConfirmList(pageNum, listLimit, type, value);
	}

	public SellerVO getProductConfirmDetail(int num) {
		return adminMapper.getProductConfirmDetail(num);
	}

	public boolean isProductConfirmUpdate(int num, String status, String nickname) {
		return adminMapper.isProductConfirmUpdate(num, status, nickname);
	}
}
