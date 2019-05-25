package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bean.Course;
import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;

public class CourseDAO {
	@SessionTarget
	Session session;
	@TransactionTarget
	Transaction transaction;
	
	public List<Course> getAllCourse() throws Exception{
		StringBuffer sqlCmd = new StringBuffer("from Course where isDeleted = 0 and status = 1 order by totalView desc");
		Query query = session.createQuery(sqlCmd.toString());
		List<Course> courses = query.list();
		return courses;
	}
	
	public List<Course> getTopNewCourse() throws Exception{
		StringBuffer sqlCmd = new StringBuffer("from Course where isDeleted = 0 and status = 1 order by CreatedTime desc");
		Query query = session.createQuery(sqlCmd.toString());
		List<Course> courses = query.list();
		return courses;
	}
	
	public List<Course> getTopRateCourse() throws Exception{
		StringBuffer sqlCmd = new StringBuffer("from Course where isDeleted = 0 and status = 1 order by Rate desc");
		Query query = session.createQuery(sqlCmd.toString());
		List<Course> courses = query.list();
		return courses;
	}
	
	public List<Course> getWaitingCourse() throws Exception{
		StringBuffer sqlCmd = new StringBuffer("from Course where isDeleted = 0 and status = 0 order by totalView desc");
		Query query = session.createQuery(sqlCmd.toString());
		List<Course> courses = query.list();
		return courses;
	}
	
	public List<Course> searchCourse(String string) throws Exception {
		StringBuffer sqlCmd = new StringBuffer("From Course where lower(dbo.ConvertString(title)) like lower(:searchKeyWord) or lower(title) like lower(:searchKeyWord) or lower(trainer.users.fullName) like lower(:searchKeyWord) or lower(dbo.ConvertString(trainer.users.fullName)) like lower(:searchKeyWord) order by rate desc");
		Query query = session.createQuery(sqlCmd.toString());
		query.setParameter("searchKeyWord", "%"+string+"%");
		List<Course> courses = query.list();
		return courses;
	}
	
	public List<Course> searchCourseManagement(String string, int trainerId) throws Exception{
		StringBuffer sqlCmd = new StringBuffer("From Course where lower(dbo.ConvertString(title)) like lower(:searchKeyWord) or lower(title) like lower(:searchKeyWord) and trainerid = '"+trainerId+"' order by rate desc");
		Query query = session.createQuery(sqlCmd.toString());
		query.setParameter("searchKeyWord", "%"+string+"%");
		List<Course> courses = query.list();
		return courses;
	}
	
	public List<Course> getCourseByCategoryID(int categoryId) throws Exception{
		StringBuffer sqlCmd = new StringBuffer("from Course where categoryId = '"+categoryId+"' and isDeleted = 0 and status = 1 order by totalView desc");
		Query query = session.createQuery(sqlCmd.toString());
		List<Course> courses = query.list();
		return courses;
	}
	
	
	public List<Course> getTopRateCourseByCategoryID(int categoryId) throws Exception{
		StringBuffer sqlCmd = new StringBuffer("from Course where categoryId = '"+categoryId+"' and isDeleted = 0 and status = 1 order by Rate desc");
		Query query = session.createQuery(sqlCmd.toString());
		List<Course> courses = query.list();
		return courses;
	}
	
	public List<Course> getTopNewCourseByCategoryID(int categoryId) throws Exception{
		StringBuffer sqlCmd = new StringBuffer("from Course where categoryId = '"+categoryId+"' and isDeleted = 0 and status = 1 order by CreatedTime desc");
		Query query = session.createQuery(sqlCmd.toString());
		List<Course> courses = query.list();
		return courses;
	}
	
	public List<Course> getTop4CourseByCategoryID(int categoryId) throws Exception{
		StringBuffer sqlCmd = new StringBuffer("from Course where categoryId = '"+categoryId+"' and isDeleted = 0 order by rate desc");
		Query query = session.createQuery(sqlCmd.toString()).setMaxResults(4);
		List<Course> courses = query.list();
		return courses;
	}
	
	public List<Course> getCourseByTrainerIDOrderByName(int trainerId) throws Exception{
		StringBuffer sqlCmd = new StringBuffer("from Course where trainerId = '"+trainerId+"' and isDeleted = 0 order by Title desc");
		Query query = session.createQuery(sqlCmd.toString());
		List<Course> courses = query.list();
		return courses;
	}
	
	public List<Course> getCourseOrderByTotalView() throws Exception{
		StringBuffer sqlCmd = new StringBuffer("from Course where isDeleted = 0 and status = 1 order by totalView desc");
		Query query = session.createQuery(sqlCmd.toString());
		List<Course> courses = query.list();
		return courses;
	}
	
	public List<Course> getTop8CourseOrderByTotalView() throws Exception{
		StringBuffer sqlCmd = new StringBuffer("from Course where isDeleted = 0 and status = 1 order by totalView desc");
		Query query = session.createQuery(sqlCmd.toString()).setMaxResults(8);
		List<Course> courses = query.list();
		return courses;
	}
	
	public List<Course> getTop3CourseOrderByRate() throws Exception{
		StringBuffer sqlCmd = new StringBuffer("from Course where isDeleted = 0 and status = 1 order by rate desc");
		Query query = session.createQuery(sqlCmd.toString()).setMaxResults(4);
		List<Course> courses = query.list();
		return courses;
	}
	
	public List<Course> getTop3CourseOrderByView() throws Exception{
		StringBuffer sqlCmd = new StringBuffer("from Course where isDeleted = 0 and status = 1 order by totalView desc");
		Query query = session.createQuery(sqlCmd.toString()).setMaxResults(4);
		List<Course> courses = query.list();
		return courses;
	}
	
	public List<Course> getTop3CourseOrderByNew() throws Exception{
		StringBuffer sqlCmd = new StringBuffer("from Course where isDeleted = 0 and status = 1 order by createdTime desc");
		Query query = session.createQuery(sqlCmd.toString()).setMaxResults(4);
		List<Course> courses = query.list();
		return courses;
	}
	
	public void addNewCourse(Course course){
		session.save(course);
	}
	
	public void updateCourse(Course course){
		session.update(course);
	}
	
	public void deleteCourse(Course course){
		course.setDeleted(true);
		session.update(course);
	}
	
	public void validCourse(Course course){
		course.setStatus((short)1);
		session.update(course);
	}
	public void rejectCourse(Course course){
		course.setStatus((short)2);
		session.update(course);
	}
	
	public Course getCourseByCourseId(int courseId){
		Course course = (Course)session.get(Course.class, courseId);
		return course;
	}
	
}
