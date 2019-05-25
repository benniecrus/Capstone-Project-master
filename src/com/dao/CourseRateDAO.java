package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bean.CourseRate;
import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;

public class CourseRateDAO {
	@SessionTarget
	Session session;
	@TransactionTarget
	Transaction transaction;
	
	public void addNewCourseRate(CourseRate courserate){
		
		session.save(courserate);

	}
	
	public boolean isRated(int courseId, int learnerId){
		StringBuffer sqlCmd = new StringBuffer("From CourseRate where courseId='"+courseId+"' and learnerId='"+learnerId+"'");
		Query query = session.createQuery(sqlCmd.toString());
		List<CourseRate> courseRates = query.list();
		if(courseRates.size()>0)
			return true;
		return false;
	}
	
	public int numberRateCourse(int courseId, int rate){
		StringBuffer sqlCmd = new StringBuffer("From CourseRate where courseId='"+courseId+"' and rate='"+rate+"'");
		Query query = session.createQuery(sqlCmd.toString());
		List<CourseRate> courseRates = query.list();
		return courseRates.size();
	}
	
}
