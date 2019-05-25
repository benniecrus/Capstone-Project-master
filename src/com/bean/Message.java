package com.bean;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OrderBy;
import javax.persistence.Table;

@Entity
@Table(name="message")
public class Message {
	
	@Id
	@GeneratedValue
	private int messageId;
	
	@Column(name="subject")
	private String subject;
	
	@Column(name="content")
	private String content;
	
	@Column(name="time")
	private Date time;
	
	@ManyToOne
	@JoinColumn(name="senderId")
	private Users sender;
	
	@ManyToOne
	@JoinColumn(name="receiverId")
	private Users receiver;
	
	@JoinColumn(name="seen")
	private boolean seen;
	
	@JoinColumn(name="receiverMessageDeleted")
	private boolean receiverMessageDeleted;
	
	@JoinColumn(name="senderMessageDeleted")
	private boolean senderMessageDeleted;
	
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public boolean isSeen() {
		return seen;
	}
	public void setSeen(boolean seen) {
		this.seen = seen;
	}
	public boolean isReceiverMessageDeleted() {
		return receiverMessageDeleted;
	}
	public void setReceiverMessageDeleted(boolean receiverMessageDeleted) {
		this.receiverMessageDeleted = receiverMessageDeleted;
	}
	public boolean isSenderMessageDeleted() {
		return senderMessageDeleted;
	}
	public void setSenderMessageDeleted(boolean senderMessageDeleted) {
		this.senderMessageDeleted = senderMessageDeleted;
	}
	public int getMessageId() {
		return messageId;
	}
	public void setMessageId(int messageId) {
		this.messageId = messageId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public Users getSender() {
		return sender;
	}
	public void setSender(Users sender) {
		this.sender = sender;
	}
	public Users getReceiver() {
		return receiver;
	}
	public void setReceiver(Users receiver) {
		this.receiver = receiver;
	}
	
	
}
