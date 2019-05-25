package com.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.bean.Course;
import com.bean.CourseRate;
import com.bean.Learner;
import com.bean.Users;
import com.dao.CourseDAO;
import com.dao.CourseRateDAO;
import com.dao.LearnerDAO;
import com.dao.UserDAO;

public class CourseRateAction implements ServletRequestAware {
	
	private HttpServletRequest request;
	private UserDAO userdao = new UserDAO();
	private CourseRateDAO courseratedao = new CourseRateDAO();
	private LearnerDAO learnerdao = new LearnerDAO();
	private CourseDAO coursedao = new CourseDAO();
	private String courseId;
	private String rate;
	private int courseRate;
	
	public String addNewCourseRate() throws Exception{
		HttpSession session = request.getSession();
		
		try{
		int userId = (int)session.getAttribute("usid");
		Users user = userdao.getUserById(userId);
		Learner learner = user.getLearners().get(0);
		Course course = coursedao.getCourseByCourseId(Integer.parseInt(courseId));
		CourseRate courserate = new CourseRate();
		courserate.setCourse(course);
		courserate.setLearner(learner);
		courserate.setRate(Float.parseFloat(rate));
		
		courseratedao.addNewCourseRate(courserate);
		return "success";
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
			return "error";
		}
		
	}
	
	public String getCourseRate() throws Exception{
		try{
			Course course = coursedao.getCourseByCourseId(Integer.parseInt(request.getParameter(courseId)));
			return "success";
		}catch(Exception e){
			return "error";
		}
	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.request = arg0;
		
	}

	public UserDAO getUserdao() {
		return userdao;
	}

	public void setUserdao(UserDAO userdao) {
		this.userdao = userdao;
	}

	public String getRate() {
		return rate;
	}

	public void setRate(String rate) {
		this.rate = rate;
	}

	public void setCourseRate(int courseRate) {
		this.courseRate = courseRate;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public CourseRateDAO getCourseratedao() {
		return courseratedao;
	}

	public void setCourseratedao(CourseRateDAO courseratedao) {
		this.courseratedao = courseratedao;
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

	public String getCourseId() {
		return courseId;
	}

	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}
	
	
	
}
