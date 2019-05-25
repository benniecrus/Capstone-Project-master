package com.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bean.Admin;
import com.bean.Document;
import com.bean.Field;
import com.bean.Learner;
import com.bean.Trainer;
import com.bean.Users;
import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;

public class TrainerDAO {

	@SessionTarget
	Session session;
	@TransactionTarget
	Transaction transaction;
	UserDAO userdao = new UserDAO();
	
	public List<Trainer> getProfile(int userId) throws Exception
	{
//		StringBuffer sqlCmd = new StringBuffer("from Users u left outer join Trainer t on u.UserID = t.UserID left outer join Field f on t.FieldID = f.FieldID where u.UserName = '"+userName+"'");
		String sqlCmd = "from Trainer where userid = '"+userId+"'";
		Query query = session.createQuery(sqlCmd);
		List<Trainer> result = query.list();
		
		return result;
	}
	public List<Trainer> display() throws Exception{
		String sqlCmd = "from Trainer where users.status = 1 order by rate desc";
		Query query = session.createQuery(sqlCmd);
		
		List<Trainer> ls = query.list();
		return ls;
	}
	public List<Trainer> waitList() throws Exception{
		String sqlCmd = "from Trainer where users.status = 0 order by trainerId";
		Query query = session.createQuery(sqlCmd);
		List<Trainer> result = query.list();
		return result;
	}
	public List<Trainer> blockList() throws Exception{
		String sqlCmd = "from Trainer where users.status = 3";
		Query query = session.createQuery(sqlCmd);
		List<Trainer> result = query.list();
		return result;
	}
	public List<Trainer> getAllTrainer() throws Exception{
		StringBuffer sqlCmd = new StringBuffer("From Trainer where users.status = 1 order by rate desc");
		Query query = session.createQuery(sqlCmd.toString());
		List<Trainer> trainers = query.list();
		return trainers;
	}
	
	public void add(Trainer trainer){
		session.saveOrUpdate(trainer);
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
	public void reject(int userID) {
		Users user = (Users) session.get(Users.class, userID);
		user.setStatus((short)2);
		session.save(user);
	}

	public void updateTrainer(Trainer trainer){
		session.update(trainer);
	}
	

	public void addTrainer(Users user, Trainer trainer)
	{
		transaction = session.beginTransaction();
		
		session.saveOrUpdate(user);
		session.save(trainer);
		
		transaction.commit();
	}
	
	public Trainer getTrainerIdByUserId(int userId)
	{
		StringBuffer sqlCmd = new StringBuffer("from Trainer where userid='"+userId+"'");
		Query q = session.createQuery(sqlCmd.toString());
		List<Trainer> ls = q.list();
		if(ls.size()>0){
		Trainer trainer = ls.get(0);
		return trainer;
		}
		else
			return null;
	}
	
	
	public Trainer getTrainerByUserName(String userName){
		Users user = userdao.getUserByUserName(userName);
		Trainer trainer = getTrainerIdByUserId(user.getUserId());
		return trainer;
	}
	
	public Trainer getTrainerByTrainerID(int trainerId){
		Trainer trainer = (Trainer)session.get(Trainer.class, trainerId);
		return trainer;
	}
	
	public List<Trainer> getTop3Trainer(){
		StringBuffer sqlCmd = new StringBuffer("From Trainer order by rate desc");
		Query query = session.createQuery(sqlCmd.toString()).setMaxResults(3);
		List<Trainer> trainers = query.list();
		return trainers;
	}
	
	public List<Trainer> getTrainerOrderByTotalCourse(){
		StringBuffer sqlCmd = new StringBuffer("From Trainer order by totalCourse desc");
		Query query = session.createQuery(sqlCmd.toString());
		List<Trainer> trainers = query.list();
		return trainers;
	}
	
}
