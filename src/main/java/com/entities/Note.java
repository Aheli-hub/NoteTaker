package com.entities;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class  Note  {
	@Id
  private int Id;
  private String Title;
  @Column(length=4000)
  private String Content;
  private Date addedDate;
  
public int getId() {
	return Id;
}
public void setId(int id) {
	Id = id;
}
public String getTitle() {
	return Title;
}
public void setTitle(String title) {
	Title = title;
}
public String getContent() {
	return Content;
}
public void setContent(String content) {
	Content = content;
}
public Date getAddedDate() {
	return addedDate;
}
public void setAddedDate(Date addedDate) {
	this.addedDate = addedDate;
}



public Note(int id, String title, String content, Date addedDate) {
	super();
	Id = new Random().nextInt(100000);
	Title = title;
	Content = content;
	this.addedDate = addedDate;
}
public Note() {
	super();
	// TODO Auto-generated constructor stub
}


  
}