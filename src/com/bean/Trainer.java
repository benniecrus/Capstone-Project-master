package com.bean;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="trainer")
public class Trainer {
	@Id
	@GeneratedValue
	private int trainerId;
	
	@ManyToOne
	@JoinColumn(name="userid")
	private Users users;
	
	@ManyToOne
	@JoinColumn(name="fieldid")
	private Field field;
	
	@Column(name="rate")
	private float rate;
	
	@Column(name="totalcourse")
	private int totalCourse;
	
	@Column(name="cv")
	private byte[] cv;
	
	@OneToMany(mappedBy="trainer")
	private List<Document> documents;
	
	@OneToMany(mappedBy="trainer")
	private List<Course> courses;
	
	@OneToMany(mappedBy="pk.trainer")
	private List<TrainerRate> trainerrates;
	
	public List<TrainerRate> getTrainerrates() {
		return trainerrates;
	}
	public void setTrainerrates(List<TrainerRate> trainerrates) {
		this.trainerrates = trainerrates;
	}
	public List<Course> getCourses() {
		return courses;
	}
	public void setCourses(List<Course> courses) {
		this.courses = courses;
	}
	public int getTrainerId() {
		return trainerId;
	}
	public void setTrainerId(int trainerId) {
		this.trainerId = trainerId;
	}
	
	public byte[] getCv() {
		return cv;
	}
	public void setCv(byte[] cv) {
		this.cv = cv;
	}
	public int getTotalCourse() {
		return totalCourse;
	}
	public void setTotalCourse(int totalCourse) {
		this.totalCourse = totalCourse;
	}
	
	
	public float getRate() {
		return rate;
	}
	public void setRate(float rate) {
		this.rate = rate;
	}
	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}
	public List<Document> getDocuments() {
		return documents;
	}
	public void setDocuments(List<Document> documents) {
		this.documents = documents;
	}
	public Field getField() {
		return field;
	}
	public void setField(Field field) {
		this.field = field;
	}
	
	
}
