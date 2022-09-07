package com.fstop.test.dao;

//這一層用於對數據庫的增刪改查操作，因為有Entity層，Dao層實際就是對Entity進行各類操作。

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fstop.test.entity.test;

@Repository
// @Repository 會被作為持久層操作（資料庫）的bean來使用，可以去自動處理資料庫操作產生的異常
public interface testDao extends JpaRepository<test, String>{

}
