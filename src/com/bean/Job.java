package com.bean;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="job")
public class Job {
	
	@Id
	@GeneratedValue
	@Column(name="JobID")
	private int jobId;
	
	@Column(name="JobName")
	private String jobName;

	@OneToMany(mappedBy="job")
	private List<Learner> learners;
	
	public int getJobId() {
		return jobId;
	}

	public void setJobid(int jobid) {
		this.jobId = jobid;
	}

	public String getJobName() {
		return jobName;
	}

	public void setJobName(String jobName) {
		this.jobName = jobName;
	}
	
	
}
