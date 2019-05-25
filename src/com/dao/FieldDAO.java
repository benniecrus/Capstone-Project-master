package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bean.Field;
import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;

public class FieldDAO {
	@SessionTarget
	Session session;
	@TransactionTarget
	Transaction transaction;
	
	public List<Field> getAllField() throws Exception{
		StringBuffer sqlCmd = new StringBuffer("From Field");
		Query q = session.createQuery(sqlCmd.toString());
		List<Field> fields = q.list();
		return fields;
	}
	
	public Field getFieldById(int fieldId){
		return (Field)session.get(Field.class, fieldId);
	}
	
	
	
}
