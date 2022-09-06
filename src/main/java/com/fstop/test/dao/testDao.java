package com.fstop.test.dao;
//對資料庫做增修查改等操作。
//讓我們在開發專案時，處理資料庫相關操作更方便而產生的物件，它會幫助我們封裝資料庫進行持久層的操作，我們會在 DAO 層提供一些特定的資料操作，不需要直接暴露資料庫細節。

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fstop.test.entity.test;

@Repository
public interface testDao extends JpaRepository<test, String>{

}
