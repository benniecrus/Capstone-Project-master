package com.dao;

import java.util.Date;
import java.util.List;

import org.apache.catalina.User;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bean.Admin;
import com.bean.Job;
import com.bean.Learner;
import com.bean.Users;
import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;

public class LearnerDAO {

	@SessionTarget
	Session session;
	@TransactionTarget
	Transaction transaction;
	UserDAO userdao = new UserDAO();
	
	public List<Learner> getProfile(int userId) throws Exception
	{
//		StringBuffer sqlCmd = new StringBuffer("from Users u left outer join Trainer t on u.UserID = t.UserID left outer join Field f on t.FieldID = f.FieldID where u.UserName = '"+userName+"'");
		String sqlCmd = "from Learner where userid = '"+userId+"'";
		Query query = session.createQuery(sqlCmd);
		List<Learner> result = query.list();
		
		return result;
	}
	public List<Learner> display() throws Exception{
		StringBuffer sqlCmd = new StringBuffer("From Learner where users.status = 1");
		
		Query query = session.createQuery(sqlCmd.toString());
		
		List<Learner> ls = query.list();
		
		return ls;
		
	}
	public List<Learner> blockList() throws Exception{
		StringBuffer sqlCmd = new StringBuffer("From Learner where users.status = 3");
		
		Query query = session.createQuery(sqlCmd.toString());
		
		List<Learner> ls = query.list();
		
		return ls;
		
	}
	public void add(Learner learner){
		session.saveOrUpdate(learner);
	}
	
	public void addLearner(Users user, short gender, Date doB, byte[] image, Job jobID)
	{
//		transaction = session.beginTransaction();
		session.saveOrUpdate(user);
		int userId =  userdao.getIdByUsername(user.getUserName());
		Learner learner = new Learner();
		learner.setUsers((Users)session.get(User.class, userId));
		learner.setGender(gender);
		learner.setDob(doB);
		
		session.saveOrUpdate(learner);
//		transaction.commit();
	}
	
	public void addLearner(Users user, Learner learner){
		transaction = session.beginTransaction();
		session.saveOrUpdate(user);
		session.saveOrUpdate(learner);
		transaction.commit();
	}
	public void block(int userID) {
		Users user = (Users) session.get(Users.class, userID);
		user.setStatus((short)3);
		session.save(user);
	}
	public void unblock(int userID) {
		Users user = (Users) session.get(Users.class, userID);
		user.setStatus((short)1);
		session.save(user);
	}
	public String delete(int learnerID)
	{
		String check = "error";
		try{
			Learner learner = (Learner)session.get(Learner.class, learnerID);
			session.delete(learner);
			check = "success";
		}catch(Exception e){
		}
		return check;
	}
	public void update(int userID, int learnerID, String fullName, String phoneNumber, Date dob, short gender, String address) {
		Learner learner = (Learner)session.get(Learner.class, learnerID);
		Users user = (Users) session.get(Users.class, userID);
		user.setFullName(fullName);
		user.setPhoneNumber(phoneNumber);
		learner.setDob(dob);
		learner.setGender(gender);
		user.setAddress(address);
		session.save(user);
		session.save(learner);
	}
	public Learner getLearnerIdByUserId(int userId)
	{
		StringBuffer sqlCmd = new StringBuffer("from Learner where userid='"+userId+"'");
		Query q = session.createQuery(sqlCmd.toString());
		List<Learner> ls = q.list();
		if(ls.size()>0){
		Learner learner = ls.get(0);
		return learner;
		}
		else
			return null;
	}
	
	public int getGender() {
		StringBuffer sqlCmd = new StringBuffer("From Learner where gender = 1");
		
		Query query = session.createQuery(sqlCmd.toString());
		
		List<Learner> male = query.list();
		
		return male.size();
	}
	
	public Learner getlearnerByLearnerId(int learnerId){
		return (Learner)session.get(Learner.class, learnerId);
	}
	
	public void updateLearner(Learner learner){
		session.update(learner);
	}
	
}
