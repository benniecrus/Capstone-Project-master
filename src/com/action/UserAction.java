package com.action;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.bean.Category;
import com.bean.Field;
import com.bean.Job;
import com.bean.Learner;
import com.bean.Trainer;
import com.bean.Users;
import com.dao.CategoryDAO;
import com.dao.FieldDAO;
import com.dao.JobDAO;
import com.dao.MessageDAO;
import com.dao.UserDAO;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport implements ServletRequestAware{
	private String userName;
	private HttpServletRequest request;
	private String password;
	private String fullName;
	private String phoneNumber;
	private byte[] avatar;
	private String address;
	private String biography;
	private Users user;
	private Trainer trainer;
	private Learner learner;
	private UserDAO userdao = new UserDAO();
	private JobDAO jobdao = new JobDAO();
	private FieldDAO fielddao = new FieldDAO();
	private MessageDAO messagedao = new MessageDAO();
	private String newPassword;
	private List<Category> categories;
	private List<Job> jobs;
	private List<Field> fields;
	private String oldPassword;
	private int numberOfnotyetSeen;
	
	private CategoryDAO categorydao = new CategoryDAO();
	
	public String addUser() throws Exception
	{
		user = new Users();
		user.setUserName(userName);
		user.setPassword(password);
		user.setFullName(fullName);
		user.setPhoneNumber(phoneNumber);
		user.setAddress(address);
		user.setBiography(biography);
		user.setStatus((short)0);
		userdao.add(user);
		categories = categorydao.getAllCategory();
		return "success";
	}

	public void display()
	{
		System.out.println(userName);
		System.out.println(password);
		System.out.println(fullName);
		System.out.println(phoneNumber);
		System.out.println(address);
		System.out.println(biography);
	}
	
	public String getUserProfile() throws Exception{
		
		user = userdao.getUserById(Integer.parseInt(request.getParameter("userid")));
		
		categories = categorydao.getAllCategory();
		
		numberOfnotyetSeen = messagedao.countMessageNotYetSeen(Integer.parseInt(request.getParameter("userid")));
		
		if(user.getTrainers().size() >0 ){
			fields = fielddao.getAllField();
			trainer = user.getTrainers().get(0);
			return "trainer";
		}
		jobs = jobdao.getAllJob();
		learner = user.getLearners().get(0);
		return "learner";
		
	}
	
	public String changePassword() throws Exception{
		
		HttpSession session = request.getSession();
		int userId = (int)session.getAttribute("usid");
		Users user = userdao.getUserById(userId);
		if(user.getPassword().equals(oldPassword))
		{
			
			user.setPassword(newPassword);
			userdao.changePassword(user);
			session.setAttribute("successMessage", "success");
		}else
			session.setAttribute("errorMessage", "error");
		
		
		
		return SUCCESS;
	}
	
	
	
	public MessageDAO getMessagedao() {
		return messagedao;
	}

	public void setMessagedao(MessageDAO messagedao) {
		this.messagedao = messagedao;
	}

	public int getNumberOfnotyetSeen() {
		return numberOfnotyetSeen;
	}

	public void setNumberOfnotyetSeen(int numberOfnotyetSeen) {
		this.numberOfnotyetSeen = numberOfnotyetSeen;
	}

	public String getOldPassword() {
		return oldPassword;
	}

	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

	public CategoryDAO getCategorydao() {
		return categorydao;
	}

	public JobDAO getJobdao() {
		return jobdao;
	}

	public void setJobdao(JobDAO jobdao) {
		this.jobdao = jobdao;
	}

	public FieldDAO getFielddao() {
		return fielddao;
	}

	public void setFielddao(FieldDAO fielddao) {
		this.fielddao = fielddao;
	}

	public List<Job> getJobs() {
		return jobs;
	}

	public void setJobs(List<Job> jobs) {
		this.jobs = jobs;
	}

	public List<Field> getFields() {
		return fields;
	}

	public void setFields(List<Field> fields) {
		this.fields = fields;
	}

	public void setCategorydao(CategoryDAO categorydao) {
		this.categorydao = categorydao;
	}

	public String getUserName() {
		return userName;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public Trainer getTrainer() {
		return trainer;
	}

	public void setTrainer(Trainer trainer) {
		this.trainer = trainer;
	}

	public Learner getLearner() {
		return learner;
	}

	public void setLearner(Learner learner) {
		this.learner = learner;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
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

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		request = arg0;
		
	}
	
}
