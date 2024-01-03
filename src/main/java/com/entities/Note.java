package com.entities;

import java.util.Date;
import java.util.Random;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
@Entity
@Table(name = "Notes")
public class Note {
	@Id
	private int id;
	private String tittle;
	
	@Column(length = 1500)
	private String content;
	private Date  addData;
	
	
	public Note() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public Note(String tittle, String content, Date addData) {
		super();
		this.id = new Random().nextInt(10000);
		this.tittle = tittle;
		this.content = content;
		this.addData = addData;
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTittle() {
		return tittle;
	}
	public void setTittle(String tittle) {
		this.tittle = tittle;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getAddData() {
		return addData;
	}
	public void setAddData(Date addData) {
		this.addData = addData;
	}
	
}
