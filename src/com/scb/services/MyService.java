package com.scb.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.scb.bean.MyBeans;

import com.scb.dao.MyDao;

@Service
public class MyService {
	@Autowired
	private MyDao mydao;
	
	@Transactional
	public int insert(MyBeans mb)
	{	
		return mydao.insert(mb);
	}
	public int delete(MyBeans mb)
	{	
		return mydao.delete(mb);
	}
	public List<MyBeans> searchId(MyBeans mb) {
		// TODO Auto-generated method stub
		return mydao.searchId(mb);
	}
	
}