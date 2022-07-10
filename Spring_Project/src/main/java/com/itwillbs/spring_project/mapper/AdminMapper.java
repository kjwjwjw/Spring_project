package com.itwillbs.spring_project.mapper;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.spring_project.vo.MemberVO;
import com.itwillbs.spring_project.vo.NoticeImgFileVO;
import com.itwillbs.spring_project.vo.NoticeVO;
import com.itwillbs.spring_project.vo.SellerVO;







public interface AdminMapper {

	public int selectListCount(@Param("table") String table,@Param("search") String search, @Param("searchType") String searchType);

	public List<Map<String, String>> selectManagementList(@Param("startRow") int startRow, @Param("listLimit") int listLimit, @Param("value") String value);

	public Map<String, String> getStatusCount();

	public MemberVO getMemberDetail(@Param("member_code") String member_code);

	public int getManagementUpdate(@Param("code") String code, @Param("status") String status, @Param("reason") String reason);
	
	public int isDelete(@Param("code") String code);

	ArrayList<NoticeVO> selectList(@Param("startRow") int startRow, @Param("listLimit") int listLimit, @Param("table") String table, @Param("search") String search, @Param("searchType") String searchType);

	NoticeVO getArticle(@Param("num") int num,@Param("msg") String msg);

	ArrayList<NoticeImgFileVO> getImg(int num);

	SellerVO getListCountType();

	ArrayList<SellerVO> selectproductConfirmList(int pageNum, int listLimit, String type, String value);

	SellerVO getProductConfirmDetail(int num);

	boolean isProductConfirmUpdate(int num, String status, String nickname);
	

}
