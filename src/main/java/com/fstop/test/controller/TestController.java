package com.fstop.test.controller;

// 負責接收前端的請求，並請業務邏輯層處理，再回傳資料給前端; 也可以為View層，渲染使用者視圖。
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fstop.test.entity.test;
import com.fstop.test.service.testService;

import lombok.extern.slf4j.Slf4j;


// @Controller 進行前端請求的處理，轉發，重定向。包括調用Service層的方法
// @RequestMapping 處理URL的請求。

@Controller
@RequestMapping("/test")
@Slf4j
public class TestController {

	@Autowired
	testService testS;
	private String message = "pages";
	
	 //輸入頁
	// @GetMapping 就是@RequestMapping (method = RequestMethod.GET)
    @GetMapping("/index")
    public String index(Map<String, Object> model) {
        log.info("TEST controller");
        this.message = "首頁";
        model.put("message", this.message);
        //return會返回相對應的頁面
        return "index";
    }
    
    //新增資料
    @PostMapping("/add")
    public String addData(@RequestParam Map<String, Object> data, Map<String, Object> model) {
        log.info("Confirm To Add");
        this.message = "新增資料";
        model.put("message", this.message);
        model.put("id", data.get("id"));
        model.put("name", data.get("name"));
        return "add";
    }
    
    //確認頁面
    @PostMapping("/result")
    public String saveData(@RequestParam Map<String, Object> data, Map<String, Object> model) {
        log.info("USER DATA");
        this.message = "確認頁面";
        test saveUser = new test((String) data.get("id"), (String) data.get("name"));
        testS.createUser(saveUser);
        List<test> Userlist = testS.getTestList();
        model.put("message", this.message);
        model.put("list", Userlist);
        return "result";
    }
    
    //修改資料
    @PostMapping("/update/{id}")
	public String updateUser(@PathVariable("id") String id, Map<String, Object> map) {
		log.info("update");
		this.message = "修改資料";
		test Userlist = testS.getTestById(id);
		map.put("message", this.message);
		map.put("id", Userlist.getId());
		map.put("name",Userlist.getName());
		return "update";
	}
    
    @PostMapping("/renew")
    public String reData(@RequestParam Map<String, Object> data, Map<String, Object> model) {
        log.info("Renew Data");
        this.message = "所有資料";
        test renewUser = new test((String) data.get("id"), (String) data.get("name"));
        testS.upDateUser(renewUser);
        List<test> Userlist = testS.getTestList();
        model.put("message", this.message);
        model.put("list", Userlist);
        return "result";
    }
    
    //刪除資料
    @PostMapping("/delete/{id}")
	public String deleteUser(@PathVariable("id") String id, Map<String, Object> model) {
    	log.info("Delete Data");
        this.message = "刪除資料";
    	testS.deleteUser(id);
		List<test> Userlist = testS.getTestList();
		model.put("message", this.message);
		model.put("list", Userlist);
		return "result";
	}
    
    //查詢全部資料
    @PostMapping("/all")
	public String allUser(@RequestParam Map<String, Object> data, Map<String, Object> model) {
		log.info("result");
		this.message = "All Data";
		List<test> Userlist = testS.getTestList();
		model.put("message", this.message);
		model.put("list", Userlist);
		return "result";
	}
}
