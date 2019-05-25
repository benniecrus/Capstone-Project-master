package com.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.bean.Job;
import com.dao.JobDAO;
import com.opensymphony.xwork2.ActionSupport;

public class JobAction extends ActionSupport implements ServletRequestAware{
	private HttpServletRequest request;
	private List<Job> jobs;

	private JobDAO jd = new JobDAO();
	
	public List<Job> getJobs() {
		return jobs;
	}

	public void setJobs(List<Job> jobs) {
		this.jobs = jobs;
	}
	
	public String showJob() throws Exception{
		jobs = jd.getAllJob();
		return "success";
	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.request = arg0;
		
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public JobDAO getJd() {
		return jd;
	}

	public void setJd(JobDAO jd) {
		this.jd = jd;
	}
	
}
