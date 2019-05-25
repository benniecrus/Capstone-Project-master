package com.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.bean.Comment;
import com.bean.Course;
import com.bean.Users;
import com.dao.CommentDAO;
import com.dao.CourseDAO;
import com.dao.UserDAO;
import com.opensymphony.xwork2.ActionSupport;

public class CommentAction extends ActionSupport implements ServletRequestAware {
	
	private HttpServletRequest request;
	private CommentDAO commentdao = new CommentDAO();
	private UserDAO userdao = new UserDAO();
	private CourseDAO coursedao = new CourseDAO();
	private int userId;
	private int courseId;
	private String content;
	private Course course;
	private Users user;
	
	public String addNewComment() throws Exception{
//		try{
			
		HttpSession session = request.getSession();
		
		userId = (int)session.getAttribute("usid");
		
		courseId = Integer.parseInt(request.getParameter("courseId"));
		
		user = userdao.getUserById(userId);
		
		course = coursedao.getCourseByCourseId(courseId);
		
		commentdao.addNewComment(user,course, content);
		
		
		return "success";
//		}
//		catch(Exception e){
//		System.out.println(e.getMessage());
//		return "error";
//		}
		
	}
	
	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public CommentDAO getCommentdao() {
		return commentdao;
	}
	public void setCommentdao(CommentDAO commentdao) {
		this.commentdao = commentdao;
	}
	public UserDAO getUserdao() {
		return userdao;
	}
	public void setUserdao(UserDAO userdao) {
		this.userdao = userdao;
	}
	public CourseDAO getCoursedao() {
		return coursedao;
	}
	public void setCoursedao(CourseDAO coursedao) {
		this.coursedao = coursedao;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getCourseId() {
		return courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
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
