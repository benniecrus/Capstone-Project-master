package com.action;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.bean.Document;
import com.bean.Trainer;
import com.dao.DocumentDAO;
import com.dao.TrainerDAO;

public class DocumentAction implements ServletRequestAware {
	private List<Document> documents;
	private List<Trainer> trainers;
	private DocumentDAO docDao = new DocumentDAO();
	private TrainerDAO trainerdao = new TrainerDAO();
	private ImageAction imageaction = new ImageAction();
	private HttpServletRequest request;
	private String description;
	private File myFile;
	
	public String addDocument() throws Exception{
		
		HttpSession session = request.getSession();
		
		Document document = new Document();
		int userid = (int)session.getAttribute("usid");
		
		List<Trainer> ls = trainerdao.getProfile(userid);
		
		Trainer trainer = (Trainer)ls.get(0);
		document.setDescription(description);
		document.setImage(imageaction.convertImageToBinary(myFile));
		document.setStatus((short)0);
		document.setTrainer(trainer);
		
		docDao.addNewDocument(document);
		return "success";
	}
	
	public String reviewDocument() throws Exception
	{
		documents = docDao.documentForReview(); 
		
		return "success";
	}
	
	public String validDocument() throws Exception
	{
		int docID = Integer.parseInt(request.getParameter("id"));
		docDao.valid(docID);
		documents = docDao.documentForReview(); 
		
		return "success";
	}
	
	public String rejectDocument() throws Exception
	{
		int docID = Integer.parseInt(request.getParameter("id"));
		docDao.reject(docID);
		
		documents = docDao.documentForReview(); 
		
		return "success";
	}
	
	
	
	
	public File getMyFile() {
		return myFile;
	}

	public void setMyFile(File myFile) {
		this.myFile = myFile;
	}

	public TrainerDAO getTrainerdao() {
		return trainerdao;
	}

	public void setTrainerdao(TrainerDAO trainerdao) {
		this.trainerdao = trainerdao;
	}

	public ImageAction getImageaction() {
		return imageaction;
	}

	public void setImageaction(ImageAction imageaction) {
		this.imageaction = imageaction;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<Document> getDocuments() {
		return documents;
	}




	public void setDocuments(List<Document> documents) {
		this.documents = documents;
	}




	public List<Trainer> getTrainers() {
		return trainers;
	}




	public void setTrainers(List<Trainer> trainers) {
		this.trainers = trainers;
	}




	public DocumentDAO getDocDao() {
		return docDao;
	}




	public void setDocDao(DocumentDAO docDao) {
		this.docDao = docDao;
	}




	public HttpServletRequest getRequest() {
		return request;
	}




	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}




	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		request = arg0;
		
	}
}
