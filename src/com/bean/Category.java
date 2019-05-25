package com.bean;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="category")
public class Category {
	
	@Id
	@GeneratedValue
	private int categoryId;
	
	@Column(name="avgView")
	private float avgView;
	
	@Column(name="rate")
	private float rate;
	
	@Column(name="avgCourseSaved")
	private float avgCourseSaved;
	
	@Column(name="categoryname")
	private String categoryName;
	
	@OneToMany(mappedBy="category")
	private List<Course> courses;
	
	
	public float getAvgView() {
		return avgView;
	}
	public void setAvgView(float avgView) {
		this.avgView = avgView;
	}
	public float getRate() {
		return rate;
	}
	public void setRate(float rate) {
		this.rate = rate;
	}
	
	public float getAvgCourseSaved() {
		return avgCourseSaved;
	}
	public void setAvgCourseSaved(float avgCourseSaved) {
		this.avgCourseSaved = avgCourseSaved;
	}
	public List<Course> getCourses() {
		return courses;
	}
	public void setCourses(List<Course> courses) {
		this.courses = courses;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	
}
