package com.bean;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="courseview")
public class CourseView {
	
	@Id
	@GeneratedValue
	private int courseViewId;
	
	@Column(name="date")
	private Date date;
	
	@ManyToOne
	@JoinColumn(name="learnerid")
	private Learner learner;
	
	@ManyToOne
	@JoinColumn(name="courseid")
	private Course course;

	public int getCourseViewId() {
		return courseViewId;
	}

	public void setCourseViewId(int courseViewId) {
		this.courseViewId = courseViewId;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Learner getLearner() {
		return learner;
	}

	public void setLearner(Learner learner) {
		this.learner = learner;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}
	
	
}
