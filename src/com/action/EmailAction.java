package com.action;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.RandomStringUtils;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.bean.Users;
import com.dao.UserDAO;
import com.opensymphony.xwork2.ActionSupport;

public class EmailAction extends ActionSupport implements ServletRequestAware{
	   private String from;
	   private String password;
	   private String to;
	   private String subject;
	   private String body;
	   private String check;
	   private String course;
	   private Users user;
	   private UserDAO userdao = new UserDAO();
	   private HttpServletRequest request;
	   static Properties properties = new Properties();
	   static {
	      properties.put("mail.smtp.host", "smtp.gmail.com");
	      properties.put("mail.smtp.socketFactory.port", "465");
	      properties.put("mail.smtp.socketFactory.class",
	                     "javax.net.ssl.SSLSocketFactory");
	      properties.put("mail.smtp.auth", "true");
	      properties.put("mail.smtp.port", "465");
	   }
	   
	   public String execute() {
		   String ret = SUCCESS;
		   HttpSession session = request.getSession();
		   String newPassword = genPassword();
		   Users user = userdao.getUserById(userdao.getIdByUsername(to));
		   if(user != null) {
			   user.setPassword(newPassword);
			   userdao.changePassword(user);
			   try {
				   
				   Session sessionE = Session.getDefaultInstance(properties,
						   new javax.mail.Authenticator() {
					   protected PasswordAuthentication 
					   getPasswordAuthentication() {
						   return new 
								   PasswordAuthentication("toancvse03675@fpt.edu.vn", "toancv24101994");
					   }});
				   
				   Message message = new MimeMessage(sessionE);
				   message.setFrom(new InternetAddress("toancvse03675@fpt.edu.vn"));
				   message.setRecipients(Message.RecipientType.TO, 
						   InternetAddress.parse(to));
				   message.setSubject("[WeTeach] Yeu cau doi mat khau! ");
				   message.setText("Mat khau moi cua ban la: " +newPassword);
				   Transport.send(message);
				   session.setAttribute("successReset", to);	   
				   
			   } catch (Exception e) {
				   ret = ERROR;
				   e.printStackTrace();
			   }
		   }else {
			   session.setAttribute("invalidAccount", to);
		   }
		   
		   return ret;
	   }
	   
	   
	   public String adminValidCourse() {
		   String ret = SUCCESS;
		   try {
			   
			   Session sessionE = Session.getDefaultInstance(properties,
					   new javax.mail.Authenticator() {
				   protected PasswordAuthentication 
				   getPasswordAuthentication() {
					   return new 
							   PasswordAuthentication("toancvse03675@fpt.edu.vn", "toancv24101994");
				   }});
			   Message message = new MimeMessage(sessionE);
			   message.setFrom(new InternetAddress("toancvse03675@fpt.edu.vn"));
			   message.setRecipients(Message.RecipientType.TO, 
					   InternetAddress.parse(to));
			   message.setSubject("[WeTeach] Kiem duyet khoa hoc! ");
			   if(check.equals("accept")) {
				   message.setText("Khoa hoc " +course.toUpperCase()+ " cua ban da duoc kiem duyet!");
			   }else if(check.equals("reject")){
				   message.setText("Khoa hoc " +course.toUpperCase()+ " cua ban khong duoc kiem duyet, vui long xem lai noi dung! ");
			   }
			   
			   Transport.send(message);
			   
		   } catch (Exception e) {
			   ret = ERROR;
			   e.printStackTrace();
		   }
		   
		   
		   return ret;
	   }
	   
	   public String adminValidTrainer() {
		   String ret = SUCCESS;
		   
			   try {
				    
				    Session sessionE = Session.getDefaultInstance(properties,
						   new javax.mail.Authenticator() {
		            protected PasswordAuthentication 
		            getPasswordAuthentication() {
		            return new 
		            PasswordAuthentication("toancvse03675@fpt.edu.vn", "toancv24101994");
		            }});
						   
					Message message = new MimeMessage(sessionE);
					message.setFrom(new InternetAddress("toancvse03675@fpt.edu.vn"));
			        message.setRecipients(Message.RecipientType.TO, 
			           InternetAddress.parse(to));
			        message.setSubject("[WeTeach] Kiem duyet tai khoan!");
			        if(check.equals("accept")) {
			        	message.setText("Tai khoan cua ban da duoc kiem duyet. Xin vui long dang nhap lai! ");
			        }else if(check.equals("reject")){
			        	message.setText("Tai khoan cua ban khong duoc kiem duyet. Xin vui long xen lai thong tin ca nhan! ");
			        }
			        
			        Transport.send(message);
			        
				} catch (Exception e) {
					ret = ERROR;
			         e.printStackTrace();
				}
		  
		   
		   return ret;
	   }
	   
	   
	   
	   public String genPassword() {
		   String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789~`!@#$%^&*()-_=+[{]}\\|;:\'\",<.>/?";
		   String pwd = RandomStringUtils.random( 8, characters );
		   return pwd;
	   }
	   
	   
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public static Properties getProperties() {
		return properties;
	}
	public static void setProperties(Properties properties) {
		EmailAction.properties = properties;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	public UserDAO getUserdao() {
		return userdao;
	}
	public void setUserdao(UserDAO userdao) {
		this.userdao = userdao;
	}
	public HttpServletRequest getRequest() {
		return request;
	}
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}
	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		request = arg0;
	}


	public String getCheck() {
		return check;
	}


	public void setCheck(String check) {
		this.check = check;
	}


	public String getCourse() {
		return course;
	}


	public void setCourse(String course) {
		this.course = course;
	}
	
}