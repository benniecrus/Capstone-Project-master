package com.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bean.Comment;
import com.bean.Course;
import com.bean.Users;
import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;

public class CommentDAO {
	@SessionTarget
	Session session;
	@TransactionTarget
	Transaction transaction;
	
	public void addNewComment(Users user, Course course, String content){
		session.beginTransaction();
		
		Comment comment = new Comment();
		
		comment.setContent(content);
		comment.setCourse(course);
		comment.setUsers(user);
		comment.setTime(new Date());
		comment.setDeleted(false);
		
		session.save(comment);
		
		session.getTransaction().commit();
		
	}
	
	public List<Comment> getComment(int courseId){
		StringBuffer sqlCmd = new StringBuffer("From Comment order by time");
		Query query = session.createQuery(sqlCmd.toString());
		List<Comment> comments = query.list();
		return comments;
	}
	
}
