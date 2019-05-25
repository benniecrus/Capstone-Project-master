package com.bean;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
@Entity
@Table(name="learner")
public class Learner {
	@Id
	@GeneratedValue
	private int learnerId;
	
	@ManyToOne
	@JoinColumn(name="userid")
	private Users users;
	
	@Column(name="gender")
	private short gender;
	
	@Column(name="dob")
	private Date dob;
	
	@ManyToOne
	@JoinColumn(name="jobid")
	private Job job;
	
	@OneToMany(mappedBy="pk.learner")
	@OrderBy("time desc")
	private List<History> histories;
	
	@OneToMany(mappedBy="pk.learner")
	private List<TrainerRate> trainerrates;
	
	@OneToMany(mappedBy="learner")
	private List<CourseView> courseviews;
	
	@OneToMany(mappedBy="pk.learner")
	private List<CourseRate> courserates;
	
	public List<CourseRate> getCourserates() {
		return courserates;
	}
	public void setCourserates(List<CourseRate> courserates) {
		this.courserates = courserates;
	}
	
	
	public List<TrainerRate> getTrainerrates() {
		return trainerrates;
	}
	public void setTrainerrates(List<TrainerRate> trainerrates) {
		this.trainerrates = trainerrates;
	}
	public List<History> getHistories() {
		return histories;
	}
	public List<CourseView> getCourseviews() {
		return courseviews;
	}
	public void setCourseviews(List<CourseView> courseviews) {
		this.courseviews = courseviews;
	}
	public void setHistories(List<History> histories) {
		this.histories = histories;
	}
	public int getLearnerId() {
		return learnerId;
	}
	public void setLearnerId(int learnerId) {
		this.learnerId = learnerId;
	}
	
	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}
	public Job getJob() {
		return job;
	}
	public void setJob(Job job) {
		this.job = job;
	}
	public short getGender() {
		return gender;
	}
	public void setGender(short gender) {
		this.gender = gender;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	
	
}
