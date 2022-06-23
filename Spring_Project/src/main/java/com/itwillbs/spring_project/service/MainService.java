package com.itwillbs.spring_project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.spring_project.mapper.ProductMapper;
import com.itwillbs.spring_project.mapper.SellMapper;
import com.itwillbs.spring_project.vo.SellerVO;



@Service
public class MainService {
	
	@Autowired
	private SellMapper sellMapper;
	private ProductMapper productMapper;
	
	
	public int registArticle(SellerVO seller) {
		
		Integer num = productMapper.selectMaxNum();
		
		return productMapper.insertArticle(seller);
	}
	
	
	
}
