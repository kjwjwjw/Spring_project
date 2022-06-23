package com.itwillbs.spring_project.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.spring_project.mapper.AdminMapper;


@Service
public class AdminService {

	@Autowired
	private AdminMapper adminMapper;

	
}
