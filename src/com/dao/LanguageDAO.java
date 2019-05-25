package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bean.Language;
import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;

public class LanguageDAO {
	@SessionTarget
	Session session;
	
	@TransactionTarget
	Transaction transaction;
	
	public List<Language> getAllLanguage(){
		StringBuffer sqlCmd = new StringBuffer("From Language");
		Query query = session.createQuery(sqlCmd.toString());
		List<Language> languages = query.list();
		return languages;
	}
	
	public Language getLanguageById(int languageId){
		Language language = (Language)session.get(Language.class, languageId);
		return language;
	}
	
}
