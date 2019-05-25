package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bean.Users;
import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;

public class UserDAO {
	@SessionTarget
	Session session;
	
	@TransactionTarget
	Transaction transaction;
	
	public boolean checkLogin(String userName, String password)
	{
		StringBuffer sqlCmd = new StringBuffer("from Users where username='"+userName+"' and password='"+password+"'");
		
		Query q = session.createQuery(sqlCmd.toString());
		
		List<Users> ls = q.list();
		
		boolean check = false;
		if(ls.size()!=0)
			check=true;
		return check;
	}

	public void add(Users user){
		session.saveOrUpdate(user);
	}
	
	
	
	public int getIdByUsername(String username)
	{
		StringBuffer sqlCmd = new StringBuffer("from Users where username='"+username+"'");
		Query q = session.createQuery(sqlCmd.toString());
		List<Users> ls = q.list();
		if(ls.size()>0){
		Users user = ls.get(0);
		return user.getUserId();
		}
		else
			return 0;
	}
	
	public Users getUserByUserName(String userName)
	{
		StringBuffer sqlCmd = new StringBuffer("from Users where username='"+userName+"'");
		Query q = session.createQuery(sqlCmd.toString());
		List<Users> ls = q.list();
		if(ls.size()>0){
			return ls.get(0);
		}
		else 
			return null;
	}
	
	public Users getUserById(int userId)
	{
		Users user = (Users)session.get(Users.class, userId);
		return user;
	}
	
	public void changePassword(Users user){
		session.save(user);
	}
	
	public Users getUserByTrainerId(int trainerId){
		return null;
	}
	
	public boolean isExisted(String userName){
		StringBuffer sqlCmd = new StringBuffer("from Users where username='"+userName+"'");
		
		Query q = session.createQuery(sqlCmd.toString());
		
		List<Users> ls = q.list();
		
		if(ls.isEmpty())
			return false;
		
		return true;
	}
	
	public void updateUser(Users user){
		session.update(user);
	}
	
}
