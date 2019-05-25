package com.action;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.hibernate.Query;

import com.bean.Admin;
import com.bean.Category;
import com.bean.Course;
import com.bean.Learner;
import com.bean.Trainer;
import com.bean.Users;
import com.dao.AdminDAO;
import com.dao.CategoryDAO;
import com.dao.CourseDAO;
import com.dao.LearnerDAO;
import com.dao.TrainerDAO;


public class AdminAction implements ServletRequestAware{
	HttpServletRequest request;
	List<Admin> admins;
	AdminDAO ad = new AdminDAO();
	private Admin admin = new Admin();
	private int adminID;
	private String username;
	private String password;
	private Byte[] avatar;
	private String address;
	private String phone;
	private String email;
	private String firstName;
	private String lastname;
	private Short gender;
	private String doB;
	private List<Trainer> trainers;
	private List<Learner> learners;
	private List<Course> courses;
	private List<Category> categories;
	private TrainerDAO trainerdao = new TrainerDAO();;
	private LearnerDAO learnerdao = new LearnerDAO();
	private CourseDAO coursedao = new CourseDAO();
	private CategoryDAO categoryDao = new CategoryDAO();
	private int coursebyCate1;
	private int coursebyCate2;
	private int coursebyCate3;
	private int coursebyCate4;
	private int coursebyCate5;
	private int coursebyCate6;
	private int coursebyCate7;
	private int coursebyCate8;
	private int coursebyCate9;
	private int coursebyCate10;
	private int noT;
	private int noL;
	private int noC;
	private int totalUser;
	private int male;
	
	
	public String login() throws Exception
	{
		boolean check = ad.checkLogin(username, password);
		if(check)
		{
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			session.setAttribute("role", "admin");
			session.setAttribute("newtrainer", trainerdao.waitList().size());
			session.setAttribute("newcourse", coursedao.getWaitingCourse().size());
			return "success";
		}
		else{
			HttpSession session = request.getSession();
			session.setAttribute("loginError", "Wrong username or password, try again!");
			return "error";
		}
	}
	
	public String logout() throws Exception
	{
		HttpSession session = request.getSession();
		session.invalidate();
		return "success";
	}
	public String admin() throws Exception
	{
		HttpSession session = request.getSession();
		if(session.getAttribute("role") != null && session.getAttribute("role").equals("admin")) {
			return "success";
		}else{
			return "error";
		}
		
	}
	
	public String indexAdmin() throws Exception{
		HttpSession session = request.getSession();
		trainers = trainerdao.display();
		learners = learnerdao.display();
		courses = coursedao.getAllCourse();
		noT = trainers.size();
		noL = learners.size();
		noC = courses.size();
		totalUser = noT + noL;
		male = (noL * 100 ) / totalUser;
		coursebyCate1 = coursedao.getCourseByCategoryID(1).size();
		coursebyCate2 = coursedao.getCourseByCategoryID(2).size();
		coursebyCate3 = coursedao.getCourseByCategoryID(3).size();
		coursebyCate4 = coursedao.getCourseByCategoryID(4).size();
		coursebyCate5 = coursedao.getCourseByCategoryID(5).size();
		coursebyCate6 = coursedao.getCourseByCategoryID(6).size();
		coursebyCate7 = coursedao.getCourseByCategoryID(7).size();
		coursebyCate8 = coursedao.getCourseByCategoryID(8).size();
		coursebyCate9 = coursedao.getCourseByCategoryID(9).size();
		coursebyCate10 = coursedao.getCourseByCategoryID(10).size();
		session.setAttribute("newtrainer", trainerdao.waitList().size());
		session.setAttribute("newcourse", coursedao.getWaitingCourse().size());
		return "success";
	}
	
	public String showAdmin() throws Exception{
		admins = ad.display();
		return "success";
	}
	public String delAdmin() throws Exception{
		int id = Integer.parseInt(request.getParameter("id"));
		ad.delete(id);
		admins = ad.display();
		return "success";
	}
	public String addAdmin() throws Exception
	{
		Date date = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("dob"));
		admin.setUserName(username);
		admin.setPassword(password);
		admin.setFirstName(firstName);
		admin.setLastName(lastname);
		admin.setGender(gender);
		admin.setDoB(date);
		admin.setPhoneNumber(phone);
		admin.setAvatar(avatar);
		admin.setEmail(email);
		admin.setAddress("address'");
		ad.add(admin);
		admins = ad.display();
		return "success";
	}
	
	public String updateAdmin() throws Exception
	{
		Date date = new SimpleDateFormat("MM/dd/yyyy").parse(request.getParameter("dob"));
		ad.update(adminID, firstName, lastname, gender, date, phone, avatar, address);
		admins = ad.display();
		return "success";
	}
	
	
	public List<Admin> getAdmins() {
		return admins;
	}
	public void setAdmins(List<Admin> admins) {
		this.admins = admins;
	}
	
	public HttpServletRequest getRequest() {
		return request;
	}
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}
	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.request = arg0;
		
	}
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public Byte[] getAvatar() {
		return avatar;
	}
	public void setAvatar(Byte[] avatar) {
		this.avatar = avatar;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public Short getGender() {
		return gender;
	}
	public void setGender(Short gender) {
		this.gender = gender;
	}
	public String getDoB() {
		return doB;
	}
	public void setDoB(String doB) {
		this.doB = doB;
	}
	public int getAdminID() {
		return adminID;
	}
	public void setAdminID(int adminID) {
		this.adminID = adminID;
	}

	public AdminDAO getAd() {
		return ad;
	}

	public void setAd(AdminDAO ad) {
		this.ad = ad;
	}

	public List<Trainer> getTrainers() {
		return trainers;
	}

	public void setTrainers(List<Trainer> trainers) {
		this.trainers = trainers;
	}

	public List<Learner> getLearners() {
		return learners;
	}

	public void setLearners(List<Learner> learners) {
		this.learners = learners;
	}

	public List<Course> getCourses() {
		return courses;
	}

	public void setCourses(List<Course> courses) {
		this.courses = courses;
	}

	public TrainerDAO getTrainerdao() {
		return trainerdao;
	}

	public void setTrainerdao(TrainerDAO trainerdao) {
		this.trainerdao = trainerdao;
	}

	public LearnerDAO getLearnerdao() {
		return learnerdao;
	}

	public void setLearnerdao(LearnerDAO learnerdao) {
		this.learnerdao = learnerdao;
	}

	public CourseDAO getCoursedao() {
		return coursedao;
	}

	public void setCoursedao(CourseDAO coursedao) {
		this.coursedao = coursedao;
	}

	public int getNoT() {
		return noT;
	}

	public void setNoT(int noT) {
		this.noT = noT;
	}

	public int getNoL() {
		return noL;
	}

	public void setNoL(int noL) {
		this.noL = noL;
	}

	public int getNoC() {
		return noC;
	}

	public void setNoC(int noC) {
		this.noC = noC;
	}

	public int getTotalUser() {
		return totalUser;
	}

	public void setTotalUser(int totalUser) {
		this.totalUser = totalUser;
	}

	public int getMale() {
		return male;
	}

	public void setMale(int male) {
		this.male = male;
	}

	public CategoryDAO getCategoryDao() {
		return categoryDao;
	}

	public void setCategoryDao(CategoryDAO categoryDao) {
		this.categoryDao = categoryDao;
	}

	public int getCoursebyCate1() {
		return coursebyCate1;
	}

	public void setCoursebyCate1(int coursebyCate1) {
		this.coursebyCate1 = coursebyCate1;
	}

	public int getCoursebyCate2() {
		return coursebyCate2;
	}

	public void setCoursebyCate2(int coursebyCate2) {
		this.coursebyCate2 = coursebyCate2;
	}

	public int getCoursebyCate3() {
		return coursebyCate3;
	}

	public void setCoursebyCate3(int coursebyCate3) {
		this.coursebyCate3 = coursebyCate3;
	}

	public int getCoursebyCate4() {
		return coursebyCate4;
	}

	public void setCoursebyCate4(int coursebyCate4) {
		this.coursebyCate4 = coursebyCate4;
	}

	public int getCoursebyCate5() {
		return coursebyCate5;
	}

	public void setCoursebyCate5(int coursebyCate5) {
		this.coursebyCate5 = coursebyCate5;
	}

	public int getCoursebyCate6() {
		return coursebyCate6;
	}

	public void setCoursebyCate6(int coursebyCate6) {
		this.coursebyCate6 = coursebyCate6;
	}

	public int getCoursebyCate7() {
		return coursebyCate7;
	}

	public void setCoursebyCate7(int coursebyCate7) {
		this.coursebyCate7 = coursebyCate7;
	}

	public int getCoursebyCate8() {
		return coursebyCate8;
	}

	public void setCoursebyCate8(int coursebyCate8) {
		this.coursebyCate8 = coursebyCate8;
	}

	public int getCoursebyCate9() {
		return coursebyCate9;
	}

	public void setCoursebyCate9(int coursebyCate9) {
		this.coursebyCate9 = coursebyCate9;
	}

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

	public int getCoursebyCate10() {
		return coursebyCate10;
	}

	public void setCoursebyCate10(int coursebyCate10) {
		this.coursebyCate10 = coursebyCate10;
	}
	
}
