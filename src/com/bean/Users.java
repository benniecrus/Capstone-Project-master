package com.bean;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;

@Entity
@Table(name="Users")
public class Users {
	@Id
	@GeneratedValue
	private int userId;
	
	@Column(name="username")
	private String userName;
	
	@Column(name="password")
	private String password;
	
	@Column(name="fullname")
	private String fullName;
	
	@Column(name="phonenumber")
	private String phoneNumber;
	
	@Column(name="avatar")
	private byte[] avatar;
	
	@Column(name="address")
	private String address;
	
	@Column(name="biography")
	private String biography;
	
	@Column(name="status")
	private short status;
	
	@OneToMany(mappedBy="users")
	private List<Trainer> trainers;
	
	@OneToMany(mappedBy="users")
	private List<Comment> comments;
	
	@OneToMany(mappedBy="users")
	private List<Learner> learners;
	
	@OneToMany(mappedBy="sender")
	@OrderBy("time desc")
	private List<Message> senderMessages;
	
	@OneToMany(mappedBy="receiver")
	@OrderBy("time desc")
	private List<Message> receiverMessages;
	
	public List<Message> getSenderMessages() {
		return senderMessages;
	}
	public void setSenderMessages(List<Message> senderMessages) {
		this.senderMessages = senderMessages;
	}
	
	public List<Message> getReceiverMessages() {
		return receiverMessages;
	}
	public void setReceiverMessages(List<Message> receiverMessages) {
		this.receiverMessages = receiverMessages;
	}
	public List<Learner> getLearners() {
		return learners;
	}
	public void setLearners(List<Learner> learners) {
		this.learners = learners;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public List<Comment> getComments() {
		return comments;
	}
	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public byte[] getAvatar() {
		return avatar;
	}
	public void setAvatar(byte[] avatar) {
		this.avatar = avatar;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getBiography() {
		return biography;
	}
	public void setBiography(String biography) {
		this.biography = biography;
	}
	public List<Trainer> getTrainers() {
		return trainers;
	}
	public void setTrainers(List<Trainer> trainers) {
		this.trainers = trainers;
	}
	public short getStatus() {
		return status;
	}
	public void setStatus(short status) {
		this.status = status;
	}
	
	
}
