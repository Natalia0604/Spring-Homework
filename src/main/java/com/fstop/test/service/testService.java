package com.fstop.test.service;
// 被controller層呼叫，根據請求做資料處理或是處理從DAO回來的資料。
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fstop.test.dao.testDao;
import com.fstop.test.entity.test;

// @Service處理業務邏輯
@Service
public class testService {
	// @Autowired 預設會依注入對象的類別型態來選擇容器中相符的物件來注入。
	@Autowired
	private testDao testdao;
	
	//全部資料
	public List<test> getTestList() {
		return testdao.findAll();
	}

	public test getTestById(String id) {
		return testdao.getReferenceById(id);
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
