package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bean.Level;
import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;

public class LevelDAO {
	@SessionTarget
	Session session;
	@TransactionTarget
	Transaction transaction;
	
	public List<Level> getAllLevel(){
		StringBuffer sqlCmd = new StringBuffer("From Level");
		Query query = session.createQuery(sqlCmd.toString());
		List<Level> levels = query.list();
		return levels;
	}
	
	public Level getLevelById(int levelId){
		Level level = (Level)session.get(Level.class, levelId);
		return level;
	}
	
}
