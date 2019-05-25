package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bean.Category;
import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;

public class CategoryDAO {
	@SessionTarget
	Session session;
	@TransactionTarget
	Transaction transaction;
	
	public List<Category> getAllCategory(){
		StringBuffer sqlCmd = new StringBuffer("From Category");
		Query query = session.createQuery(sqlCmd.toString());
		List<Category> categories = query.list();
		return categories;
	}
	
	public Category getCategoryById(int categoryId){
		Category category = (Category)session.get(Category.class, categoryId);
		return category;
	}
	
	public void getTotalViewCourse(){
		String sqlCmd = "select SUM(Course.totalView) as TotalView, Course.categoryId from Course, Category where Course.categoryId = Category.categoryId group by Course.categoryId";
		Query query = session.createQuery(sqlCmd);
		List results = query.list();
		System.out.println(results.size());
	}
	
}
