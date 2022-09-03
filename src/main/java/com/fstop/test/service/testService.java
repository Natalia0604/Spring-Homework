package com.fstop.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fstop.test.dao.testDao;
import com.fstop.test.entity.test;

@Service
public class testService {
	@Autowired
	private testDao testdao;
	
	//全部資料
	public List<test> getTestList() {
		return testdao.findAll();
	}

	public test getTestById(String id) {
		return testdao.getOne(id);
	}

	//新增資料
	public test createUser(test test) {
		return testdao.save(test);
	}

	//修改資料
	public String upDateUser(test test) {
		testdao.save(test);
		return "ok";
	}
	
	//刪除資料
	public String deleteUser(String id) {
		testdao.deleteById(id);
		return "ok";
	}
}
