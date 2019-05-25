package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bean.Learner;
import com.bean.Trainer;
import com.bean.TrainerRate;
import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;

public class TrainerRateDAO {

	@SessionTarget
	Session session;
	@TransactionTarget
	Transaction transaction;

	public void addNewTrainerRate(TrainerRate trainerrate) {

		session.save(trainerrate);

	}
	
	public boolean trainerRated(int trainerId, int learnerId ){
		StringBuffer sqlCmd = new StringBuffer("From TrainerRate where trainerId='"+trainerId+"' and learnerId='"+learnerId+"'");
		Query query = session.createQuery(sqlCmd.toString());
		List<TrainerRate> trainerrates = query.list();
		if(trainerrates.size()>0)
			return true;
		return false;
	}

}
