package com.action;

import com.bean.Course;
import com.bean.Learner;
import com.dao.CourseDAO;
import com.dao.HistoryDAO;
import com.dao.LearnerDAO;

public class HistoryAction {
	private HistoryDAO historydao = new HistoryDAO();
	private LearnerDAO learnerdao = new LearnerDAO();
	private CourseDAO coursedao = new CourseDAO();
	
	public String addNewHistory() throws Exception{
		
		Learner learner = learnerdao.getlearnerByLearnerId(3);
		Course course = coursedao.getCourseByCourseId(4);
		
//		historydao.addNewHistory(course, learner);
		
		return "success";
	}
	
}
