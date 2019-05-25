package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.bean.Job;
import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;


public class JobDAO {

	@SessionTarget
	Session session;
	
	public List<Job> getAllJob() throws Exception{
		
		StringBuffer sqlCmd = new StringBuffer("From Job");
		
		Query q = session.createQuery(sqlCmd.toString());
		
		List<Job> ls = q.list();
		
		return ls;
	}
	
	public Job getJobById(int jobId)
	{
		return (Job)session.get(Job.class, jobId);
	}
	
}
