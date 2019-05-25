package com.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bean.Course;
import com.bean.History;
import com.bean.Learner;
import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;

public class HistoryDAO {
	@SessionTarget
	Session session;
	@TransactionTarget
	Transaction transaction;
	
	public void addNewHistory(History history) throws Exception{

		session.save(history);
		
		
	}
	
	public void updateHistory(History history) throws Exception{
		session.update(history);
	}
	
	public List<History> getCourseSaved(int learnerId) throws Exception{
		StringBuffer sqlCmd = new StringBuffer("From History where learnerid='"+learnerId+"' and isSaved='1' order by time");
		Query query = session.createQuery(sqlCmd.toString());
		List<History> histories = query.list();
		return histories;
	}
	
	public List<History> getCourseSavedbyCourseID(int courseId) throws Exception{
		StringBuffer sqlCmd = new StringBuffer("From History where courseid='"+courseId+"' and isSaved='1' order by time");
		Query query = session.createQuery(sqlCmd.toString());
		List<History> histories = query.list();
		return histories;
	}
	
	
	
	public List<History> getAHistory(int courseId, int learnerId) throws Exception{
		StringBuffer sqlCmd = new StringBuffer("From History where learnerid = '"+learnerId+"' and courseid = '"+courseId+"' ");
		Query query = session.createQuery(sqlCmd.toString());
		List<History> histories = query.list();
		
		return histories;
		
		
	}
	
	
	public String delete(int learnerID)
	{
		String check = "error";
		try{
			History history = (History)session.get(History.class, learnerID);
			session.delete(history);
			check = "success";
		}catch(Exception e){
		}
		return check;
	}
	
}
