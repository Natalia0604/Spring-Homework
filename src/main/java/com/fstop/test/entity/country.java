package com.fstop.test.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.*;

@Data
@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "countries")
public class country {

	@Id
	@Column(name = "id")
	private String id;
	
	@Column(name = "name")
	private String name;

//	public country(String id, String name) {
//		super();
//		this.id = id;
//		this.name = name;
//	}
//
//	public country() {
//	
//	}
//	public String getId() {
//		return id;
//	}
//
//	public void setId(String id) {
//		this.id = id;
//	}
//
//	public String getName() {
//		return name;
//	}
//
//	public void setName(String name) {
//		this.name = name;
//	}
	
}
