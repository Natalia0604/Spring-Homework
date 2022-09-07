package com.fstop.test.entity;
// Entity層 對資料庫做增修查改等操作。

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@Table(name = "user")
@Entity
@Getter
@Setter
//@AllArgsConstructor
//@NoArgsConstructor
public class test {
	@Id
	@Column(name = "id")

	private String id;

	@Column(name = "name")

	private String name;
	
	public test(String id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	
	public test() {
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
}
