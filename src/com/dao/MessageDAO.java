package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bean.Message;
import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;

public class MessageDAO {
	
	@SessionTarget
	Session session;
	@TransactionTarget
	Transaction transaction;
	
	public void addNewMessage(Message message) throws Exception{
		session.save(message);
	}
	
	public void updateMessage(Message message) throws Exception{
		session.update(message);
	}
	
	public List<Message> getMessage(int senderId, int receiverId){
		StringBuffer sqlCmd = new StringBuffer("From Message where senderId= '"+senderId+"' and receiverId='"+receiverId+"' or senderId='"+receiverId+"' and receiverId='"+senderId+"' order by time ");
		Query query = session.createQuery(sqlCmd.toString());
		List<Message> messages = query.list();
		return messages;
	}
	
	public int countMessageNotYetSeen(int receiverId){
		StringBuffer sqlCmd = new StringBuffer("From Message where receiverId='"+receiverId+"' and seen = 'false' ");
		Query query = session.createQuery(sqlCmd.toString());
		List<Message> messages = query.list();
		return messages.size();
		
	}
	
}
