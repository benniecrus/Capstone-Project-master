package com.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bean.Admin;
import com.bean.Users;
import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;

public class AdminDAO {

	@SessionTarget
	Session session;
	@TransactionTarget
	Transaction transaction;
	
	public boolean checkLogin(String userName, String password)
	{
		StringBuffer sqlCmd = new StringBuffer("from Admin where username='"+userName+"' and password='"+password+"'");
		
		Query q = session.createQuery(sqlCmd.toString());
		
		List<Users> ls = q.list();
		
		boolean check = false;
		if(ls.size()!=0)
			check=true;
		return check;
	}
	
	public List<Admin> display() throws Exception{
		StringBuffer sqlCmd = new StringBuffer("From Admin");
		
		Query query = session.createQuery(sqlCmd.toString());
		
		List<Admin> ls = query.list();
		
		return ls;
		
	}
	public String delete(int adminID)
	{
		String check = "error";
		try
		{
		Admin a = (Admin)session.get(Admin.class, adminID);
		session.delete(a);
		check = "success";
		}
		catch(Exception e){
			
		}
		return check;
	}
	public void add(Admin admin)
	{
		session.saveOrUpdate(admin);
	}
	
	public void add(String username, String password, String firstName, String lastName, Short gender, Date doB, String phoneNumber, Byte[] avatar, String email, String address)
	{
		Admin a = new Admin();
		a.setUserName(username);
		a.setPassword(password);
		a.setFirstName(firstName);
		a.setLastName(lastName);
		a.setGender(gender);
		a.setDoB(doB);
		a.setPhoneNumber(phoneNumber);
		a.setAvatar(avatar);
		a.setEmail(email);
		a.setAddress(address);
		session.save(a);
	}
//	public boolean update(String username, String oldPassword, String newPassword)
//	{
//		boolean check = false;
//		Account a = (Account)session.get(Account.class, username);
//		if(oldPassword.equals(a.getPassword()))
//		{
//			a.setPassword(newPassword);
//			session.save(a);
//			check=true;
//		}
//		Admin a = (Admin)session.get(Admin.class, username);
//		return check;
//	}
	public void update(int adminID, String firstName, String lastName, Short gender, Date doB, String phoneNumber, Byte[] avatar, String address)
	{
		Admin a = (Admin)session.get(Admin.class, adminID);
//		a.setUserName(username);
//		a.setPassword(password);
		a.setFirstName(firstName);
		a.setLastName(lastName);
		a.setGender(gender);
		a.setDoB(doB);
		a.setPhoneNumber(phoneNumber);
		a.setAvatar(avatar);
//		a.setEmail(email);
		a.setAddress(address);
		session.save(a);
	}
}
