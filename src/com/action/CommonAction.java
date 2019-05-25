package com.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.bean.Category;
import com.bean.Course;
import com.bean.Field;
import com.bean.Job;
import com.bean.Trainer;
import com.dao.CategoryDAO;
import com.dao.CourseDAO;
import com.dao.FieldDAO;
import com.dao.JobDAO;
import com.dao.MessageDAO;
import com.dao.TrainerDAO;

public class CommonAction implements ServletRequestAware {
	private HttpServletRequest request;
	private List<Field> fields;
	private List<Job> jobs;
	private List<Category> categories;
	private FieldDAO fielddao = new FieldDAO();
	private JobDAO jobdao = new JobDAO();
	private CategoryDAO categorydao = new CategoryDAO();
	private TrainerDAO trainerdao = new TrainerDAO();
	private CourseDAO coursedao = new CourseDAO();
	private MessageDAO messagedao = new MessageDAO();
	private List<Trainer> trainers;
	private List<Course> topRateCourse;
	private List<Course> topViewCourse;
	private List<Course> top3View;
	private List<Course> top3New;
	private int numberOfnotyetSeen;
	
	public String initSignUp() throws Exception{
		fields = fielddao.getAllField();
		jobs = jobdao.getAllJob();
		categories = categorydao.getAllCategory();
		return "success";
	}
	public String initIndex() throws Exception{
		HttpSession session = request.getSession();
		trainers = trainerdao.getTop3Trainer();
		
		topRateCourse = coursedao.getTop3CourseOrderByRate();
		top3View = coursedao.getTop3CourseOrderByView();
		top3New = coursedao.getTop3CourseOrderByNew();
		
		topViewCourse = coursedao.getTop8CourseOrderByTotalView();
		
		if(session.getAttribute("usid")!=null)
		{
			numberOfnotyetSeen = messagedao.countMessageNotYetSeen((int)session.getAttribute("usid"));
			session.setAttribute("numberOfnotyetSeen", numberOfnotyetSeen);
		}
		
		categories = categorydao.getAllCategory();
		return "success";
	}
	
	
	public HttpServletRequest getRequest() {
		return request;
	}
	public void setRequest(HttpServletRequest request) {
		this.request = request;
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
	public List<Course> getTop3View() {
		return top3View;
	}
	public void setTop3View(List<Course> top3View) {
		this.top3View = top3View;
	}
	public List<Course> getTop3New() {
		return top3New;
	}
	public void setTop3New(List<Course> top3New) {
		this.top3New = top3New;
	}
	public List<Field> getFields() {
		return fields;
	}
	public void setFields(List<Field> fields) {
		this.fields = fields;
	}
	public List<Job> getJobs() {
		return jobs;
	}
	public void setJobs(List<Job> jobs) {
		this.jobs = jobs;
	}
	public List<Category> getCategories() {
		return categories;
	}
	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}
	public FieldDAO getFielddao() {
		return fielddao;
	}
	public void setFielddao(FieldDAO fielddao) {
		this.fielddao = fielddao;
	}
	public JobDAO getJobdao() {
		return jobdao;
	}
	public void setJobdao(JobDAO jobdao) {
		this.jobdao = jobdao;
	}
	public CategoryDAO getCategorydao() {
		return categorydao;
	}
	public void setCategorydao(CategoryDAO categorydao) {
		this.categorydao = categorydao;
	}
	public TrainerDAO getTrainerdao() {
		return trainerdao;
	}
	public void setTrainerdao(TrainerDAO trainerdao) {
		this.trainerdao = trainerdao;
	}
	public CourseDAO getCoursedao() {
		return coursedao;
	}
	public void setCoursedao(CourseDAO coursedao) {
		this.coursedao = coursedao;
	}
	public List<Trainer> getTrainers() {
		return trainers;
	}
	public void setTrainers(List<Trainer> trainers) {
		this.trainers = trainers;
	}
	public List<Course> getTopRateCourse() {
		return topRateCourse;
	}
	public void setTopRateCourse(List<Course> topRateCourse) {
		this.topRateCourse = topRateCourse;
	}
	public List<Course> getTopViewCourse() {
		return topViewCourse;
	}
	public void setTopViewCourse(List<Course> topViewCourse) {
		this.topViewCourse = topViewCourse;
	}
	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.request = arg0;
		
	}
	
}
