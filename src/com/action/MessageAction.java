package com.action;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.bean.Message;
import com.bean.Users;
import com.dao.MessageDAO;
import com.dao.UserDAO;
import com.opensymphony.xwork2.ActionSupport;

public class MessageAction extends ActionSupport implements ServletRequestAware {
	private HttpServletRequest request;
	private MessageDAO messagedao = new MessageDAO();
	private UserDAO userdao = new UserDAO();
	private String subject;
	private String content;
	private String senderId;
	private String receiverId;
	private String userId;
	private Users user;
	private List<Message> sentMessages;
	private List<Message> receivedMessages;
	private String userName;
	
	public String getMessage() throws Exception{
		
		HttpSession session = request.getSession();
		
		user = userdao.getUserById((int)session.getAttribute("usid"));
		
		receivedMessages = user.getReceiverMessages();
		 
		sentMessages = user.getSenderMessages();
		
		for(int i=0; i<receivedMessages.size(); i++){
			if(receivedMessages.get(i).isSeen()==false){
				Message message = receivedMessages.get(i);
				message.setSeen(true);
				messagedao.updateMessage(message);
			}
		}
		
		if(session.getAttribute("numberOfnotyetSeen")!=null){
			session.removeAttribute("numberOfnotyetSeen");
		}
		
		return SUCCESS;
	}
	
	
	
	
	
	public String addNewMessage() throws Exception{
		
		HttpSession session = request.getSession();
		
		if(userdao.isExisted(userName)){
			
		Users sender = userdao.getUserById((int)session.getAttribute("usid"));
		
		Users receiver = userdao.getUserByUserName(userName);
		
		Message message = new Message();
		message.setSubject(subject);
		message.setContent(content);
		message.setReceiver(receiver);
		message.setSender(sender);
		message.setReceiverMessageDeleted(false);
		message.setSeen(false);
		message.setSenderMessageDeleted(false);
		message.setTime(new Date());
		
		messagedao.addNewMessage(message);
		
		
		}
		else {
			session.setAttribute("errorMessage", "Gửi tin nhắn thất bại, tài khoản này không tồn tại");
		}
		return SUCCESS;
	}
	
	
	
	public String notice() throws Exception{
		
		Users sender = userdao.getUserById(1);
		Users receiver = userdao.getUserById(2);
		
		Message message = new Message();
		message.setContent("hello");
		message.setReceiver(receiver);
		message.setSender(sender);
		message.setReceiverMessageDeleted(false);
		message.setSeen(false);
		message.setSenderMessageDeleted(false);
		message.setTime(new Date());
		
		messagedao.addNewMessage(message);
		
		return SUCCESS;
		
	}

	
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public List<Message> getSentMessages() {
		return sentMessages;
	}

	public void setSentMessages(List<Message> sentMessages) {
		this.sentMessages = sentMessages;
	}

	public List<Message> getReceivedMessages() {
		return receivedMessages;
	}

	public void setReceivedMessages(List<Message> receivedMessages) {
		this.receivedMessages = receivedMessages;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getSenderId() {
		return senderId;
	}

	public void setSenderId(String senderId) {
		this.senderId = senderId;
	}

	public String getReceiverId() {
		return receiverId;
	}

	public void setReceiverId(String receiverId) {
		this.receiverId = receiverId;
	}

	public MessageDAO getMessagedao() {
		return messagedao;
	}

	public void setMessagedao(MessageDAO messagedao) {
		this.messagedao = messagedao;
	}

	public UserDAO getUserdao() {
		return userdao;
	}

	public void setUserdao(UserDAO userdao) {
		this.userdao = userdao;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.request = arg0;
		
	}
	
}
