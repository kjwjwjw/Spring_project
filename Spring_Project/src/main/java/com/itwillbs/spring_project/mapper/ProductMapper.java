package com.itwillbs.spring_project.mapper;

import com.itwillbs.spring_project.vo.SellerVO;

public interface ProductMapper {

	public Integer selectMaxNum();

	public int insertArticle(SellerVO seller);
	
}
