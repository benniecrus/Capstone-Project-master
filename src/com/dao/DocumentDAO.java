package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bean.Document;
import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;

public class DocumentDAO {
	@SessionTarget
	Session session;
	@TransactionTarget
	Transaction transaction;
	
	public List<Document> getDocumentByTrainerId(int trainerId){
		StringBuffer sqlCmd = new StringBuffer("from Document where trainerid = '"+trainerId+"' ");
		Query query = session.createQuery(sqlCmd.toString());
		List<Document> ls = query.list();
		return ls;
	}

	public List<Document> documentForReview(){
		StringBuffer sqlCmd = new StringBuffer("from Document where status = 0");
		Query query = session.createQuery(sqlCmd.toString());
		List<Document> ls = query.list();
		return ls;
	}
	
	public void valid(int docID) {
		Document doc = (Document) session.get(Document.class, docID);
		doc.setStatus((short)1);
		session.save(doc);
	}
	public void reject(int docID) {
		Document doc = (Document) session.get(Document.class, docID);
		doc.setStatus((short)2);
		session.save(doc);
	}
	
	public byte[] getDocumentImage(int trainerId){
		StringBuffer sqlCmd = new StringBuffer("from Document where trainerid = '"+trainerId+"' ");
		Query query = session.createQuery(sqlCmd.toString());
		List<Document> ls = query.list();
		Document dc = ls.get(0);
		return dc.getImage();
	}
	
	public Document getDocumentById(int documentId){
		Document doc = (Document)session.get(Document.class, documentId);
		return doc;
	}
	
	public void addNewDocument(Document document){
		session.save(document);
	}
	
}
