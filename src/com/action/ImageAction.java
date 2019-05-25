package com.action;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.output.ByteArrayOutputStream;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.bean.Course;
import com.bean.Document;
import com.bean.Trainer;
import com.bean.Users;
import com.dao.CourseDAO;
import com.dao.DocumentDAO;
import com.dao.TrainerDAO;
import com.dao.UserDAO;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;

public class ImageAction extends ActionSupport implements ServletRequestAware{
	byte[] imageInByte = null;
	private String imageId;
	private UserDAO userdao = new UserDAO();
	private TrainerDAO trainerdao = new TrainerDAO();
	private DocumentDAO documentdao = new DocumentDAO();
	private CourseDAO coursedao = new CourseDAO();
	private Users user;
	private Course course;
	private Trainer trainer;
	private HttpServletRequest servletRequest;
	private String userImage;
//	HttpSession session = servletRequest.getSession();

	public String getImageId() {
		return imageId;
	}

	public void setImageId(String imageId) {
		this.imageId = imageId;
	}

	public ImageAction() {
		
	}

	public String execute() {
		return SUCCESS;
	}
	
	public byte[] convertImageToBinary(File file){
		try{

		FileInputStream imageInFile = new FileInputStream(file);
		byte imageData[] = new byte[(int) file.length()];
		imageInFile.read(imageData); 
		Base64.encode(imageData);
		return imageData;
		}catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
	

	public byte[] getUserImage() throws Exception {
		int userId = 0;
		byte[] imageData = null;
		try{
		userId = Integer.parseInt(servletRequest.getParameter("userid"));
		}catch(Exception e)
		{
			System.out.println(e.toString());
		}
		
		user = userdao.getUserById(userId);
		imageData = user.getAvatar();
		if(user.getAvatar() == null)
			System.out.println("null");
		return imageData;
		
	}
	
	public byte[] getCourseImage() throws Exception {
		int courseId = 0;
		byte[] imageData = null;
		try{
			courseId = Integer.parseInt(servletRequest.getParameter("courseid"));
			
		}catch(Exception e)
		{
			System.out.println(e.toString());
		}
		
		course = coursedao.getCourseByCourseId(courseId);
		imageData = course.getImage();
		
		if(course.getImage() == null)
			System.out.println("null");
		
		return imageData;
		
	}
	
	public byte[] getDocumentImage() throws Exception{
		
		byte[] imageData=null;
		try{
			int documentId = Integer.parseInt(servletRequest.getParameter("documentid"));
			Document doc = documentdao.getDocumentById(documentId);
			imageData = doc.getImage();
		}catch(Exception e)
		{
			System.out.println(e);
		}
		return imageData;
		
	}
	
	public byte[] getCurriculum() throws Exception{
		byte[] curriculumData = null;
		
		try{
			int courseId = Integer.parseInt(servletRequest.getParameter("courseId"));
			Course course = coursedao.getCourseByCourseId(courseId);
			curriculumData = course.getCurriculum();
		}catch(Exception e)
		{
			System.out.println(e);
		}
		return  curriculumData;
	}
	
	public byte[] getCV() throws Exception{
		byte[] cvData = null;
		
		try{
			int trainerId = Integer.parseInt(servletRequest.getParameter("trainerid"));
			Trainer trainer = trainerdao.getTrainerByTrainerID(trainerId);
			cvData = trainer.getCv();
		}catch(Exception e)
		{
			System.out.println(e);
		}
		return  cvData;
	}

	public byte[] getImageInByte() {
		return imageInByte;
	}

	public void setImageInByte(byte[] imageInByte) {
		this.imageInByte = imageInByte;
	}

	public UserDAO getUserdao() {
		return userdao;
	}

	public void setUserImage(String userImage) {
		this.userImage = userImage;
	}

	public void setUserdao(UserDAO userdao) {
		this.userdao = userdao;
	}

	public TrainerDAO getTrainerdao() {
		return trainerdao;
	}

	public void setTrainerdao(TrainerDAO trainerdao) {
		this.trainerdao = trainerdao;
	}

	public DocumentDAO getDocumentdao() {
		return documentdao;
	}

	public void setDocumentdao(DocumentDAO documentdao) {
		this.documentdao = documentdao;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public Trainer getTrainer() {
		return trainer;
	}

	public void setTrainer(Trainer trainer) {
		this.trainer = trainer;
	}

	public HttpServletRequest getServletRequest() {
		return servletRequest;
	}

	public String getCustomContentType() {
		return "image/jpeg";
	}
	
	public String getPdfContentType(){
		return "application/pdf";
	}
	
	public String getCustomContentDisposition() {
		return "anyname.jpg";
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.servletRequest = request;

	}

	public CourseDAO getCoursedao() {
		return coursedao;
	}

	public void setCoursedao(CourseDAO coursedao) {
		this.coursedao = coursedao;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

}

