package com.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.bean.Learner;
import com.bean.Trainer;
import com.bean.TrainerRate;
import com.bean.Users;
import com.dao.LearnerDAO;
import com.dao.TrainerDAO;
import com.dao.TrainerRateDAO;
import com.dao.UserDAO;
import com.opensymphony.xwork2.ActionSupport;

public class TrainerRateAction extends ActionSupport implements ServletRequestAware {
	private HttpServletRequest request;
	private TrainerDAO trainerdao = new TrainerDAO();
	private LearnerDAO learnerdao = new LearnerDAO();
	private UserDAO userdao = new UserDAO();
	private TrainerRateDAO trainerratedao = new TrainerRateDAO();
	private String rate;
	private String trainerid;
	
	
	public String addNewTrainerRate() throws Exception{
		HttpSession session = request.getSession();
		
		try{
		
		int userId = (int)session.getAttribute("usid");
		Users user = userdao.getUserById(userId);
		Trainer trainer = trainerdao.getTrainerByTrainerID(Integer.parseInt(trainerid));
		Learner learner =  user.getLearners().get(0);
		TrainerRate trainerrate = new TrainerRate();
		trainerrate.setLearner(learner);
		trainerrate.setTrainer(trainer);
		trainerrate.setRate(Integer.parseInt(rate));
		trainerratedao.addNewTrainerRate(trainerrate);
		}catch(Exception e){
			return "error";
		}
		
		return SUCCESS;
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


	public TrainerRateDAO getTrainerratedao() {
		return trainerratedao;
	}


	public void setTrainerratedao(TrainerRateDAO trainerratedao) {
		this.trainerratedao = trainerratedao;
	}


	public String getRate() {
		return rate;
	}


	public void setRate(String rate) {
		this.rate = rate;
	}


	

	public UserDAO getUserdao() {
		return userdao;
	}


	public void setUserdao(UserDAO userdao) {
		this.userdao = userdao;
	}


	public String getTrainerid() {
		return trainerid;
	}


	public void setTrainerid(String trainerid) {
		this.trainerid = trainerid;
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
	
	
	
}
