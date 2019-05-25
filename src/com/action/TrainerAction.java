package com.action;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.hibernate.Session;

import com.bean.Category;
import com.bean.Course;
import com.bean.Document;
import com.bean.Field;
import com.bean.Learner;
import com.bean.Trainer;
import com.bean.Users;
import com.dao.CategoryDAO;
import com.dao.FieldDAO;
import com.dao.MessageDAO;
import com.dao.TrainerDAO;
import com.dao.TrainerRateDAO;
import com.dao.UserDAO;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;

public class TrainerAction extends ActionSupport implements ServletRequestAware{
	
	private UserDAO userdao = new UserDAO();
	private TrainerDAO trainerdao = new TrainerDAO();
	private FieldDAO fielddao = new FieldDAO();
	private ImageAction imageaction = new ImageAction();
	private TrainerRateDAO trainerratedao = new TrainerRateDAO();
	private MessageDAO messagedao = new MessageDAO();
	private Trainer trainer;
	private Field field;
	private Users user;
	private Object ob;
	private UserAction useraction;
	private HttpServletRequest request;
	private String userName;
	private String passwordTrainer;
	private String password;
	private String fullName;
	private String phoneNumber;
	private byte[] documentData;
	private String address;
	private String biography;
	private String fieldId;
	private byte[] avatar;
	private File myFile;
	private String newPassword;
	private List<Document> documents;
	private List<Category> categories;
	private List<Trainer> trainers;
	private List<Course> courses;
	private List<Trainer> waitList;
	private List<Trainer> blockList;
	private List<Field> fields;
	private CategoryDAO categorydao = new CategoryDAO();
	private boolean trainerRated=true;
	private Learner learner;
	private int numberOfnotyetSeen;
	private String userName1;
	private String check;
	
	
	public String addTrainer() throws Exception{
		password=passwordTrainer;
		if(userdao.isExisted(userName)){
			HttpSession session = request.getSession();
			session.setAttribute("trainerErrorMessage", "This email has been existed!");
			return ERROR;
		}
		
		user = new Users();
		user.setUserName(userName);
		user.setPassword(password);
		user.setFullName(fullName);
		user.setPhoneNumber(phoneNumber);
		user.setAddress(address);
		user.setBiography(biography);
		user.setStatus((short)0);
		
		avatar = imageaction.convertImageToBinary(new File("E:\\WeTeach/WeTeach1/WebContent/image/download.png"));
		user.setAvatar(avatar);
		
		trainer = new Trainer();
		trainer.setUsers(user);
		trainer.setField(fielddao.getFieldById(Integer.parseInt(fieldId)));
		trainer.setRate(0);
		
		if(myFile != null)
			trainer.setCv(imageaction.convertImageToBinary(myFile));
		
		trainerdao.addTrainer(user, trainer);
		
		categories = categorydao.getAllCategory();
		return "success";
		
	}
	
	public String updateTrainer() throws Exception
	{
		int userId = Integer.parseInt(request.getParameter("userID"));
		
		user = userdao.getUserById(userId);
		trainer = user.getTrainers().get(0);
	
		user.setAddress(address);
		user.setFullName(fullName);
		user.setPhoneNumber(phoneNumber);;
		userdao.updateUser(user);
		
		trainer.setField(fielddao.getFieldById(Integer.parseInt(fieldId)));
		trainerdao.updateTrainer(trainer);
		
		trainers = trainerdao.display();
		blockList = trainerdao.blockList();
		return "success";
	}
	public String blockTrainer() throws Exception
	{
		int id = Integer.parseInt(request.getParameter("id"));
		trainerdao.block(id);
		trainers = trainerdao.display();
		blockList = trainerdao.blockList();
		return "success";
	}
	
	public String unblockTrainer() throws Exception
	{
		int id = Integer.parseInt(request.getParameter("id"));
		trainerdao.unblock(id);
		trainers = trainerdao.display();
		blockList = trainerdao.blockList();
		return "success";
	}
	public String reviewTrainer() throws Exception
	{
		waitList = trainerdao.waitList();
		return "success";
	}
	
	public String rejectTrainer() throws Exception
	{
		int id = Integer.parseInt(request.getParameter("id"));
		userName1 = userdao.getUserById(id).getUserName();
		check = "reject";
		trainerdao.reject(id);
		waitList = trainerdao.waitList();
		HttpSession session = request.getSession();
		session.setAttribute("newtrainer", trainerdao.waitList().size());
		return "success";
	}
	public String validTrainer() throws Exception
	{
		int id = Integer.parseInt(request.getParameter("id"));
		userName1 = userdao.getUserById(id).getUserName();
		check = "accept";
		trainerdao.unblock(id);
		waitList = trainerdao.waitList();
		HttpSession session = request.getSession();
		session.setAttribute("newtrainer", trainerdao.waitList().size());
		return "success";
	}
	public String updateTrainerProfile()
	{
		HttpSession session = request.getSession();
		int userId = (int)session.getAttribute("usid");
		
		user = userdao.getUserById(userId);
		trainer = user.getTrainers().get(0);
		
		if( !( fullName.trim().equals(user.getFullName()) &&  phoneNumber.trim().equals(user.getPhoneNumber()) && address.trim().equals(user.getAddress()) && biography.trim().equals(user.getBiography()) ))
		{
			user.setAddress(address);
			user.setFullName(fullName);
			user.setBiography(biography);
			userdao.updateUser(user);
		}
		
		if(Integer.parseInt(fieldId)!=trainer.getField().getFieldId())
		{
			trainer.setField(fielddao.getFieldById(Integer.parseInt(fieldId)));
			trainerdao.updateTrainer(trainer);
		}
		
		
		return "success";
	}
	
	public String updateAvatar() throws Exception{
		
		HttpSession session = request.getSession();
		int userId = (int)session.getAttribute("usid");
		
		user = userdao.getUserById(userId);
		
		user.setAvatar(imageaction.convertImageToBinary(myFile));
		
		return "success";
		
	}
	
	public String publicTrainerProfile() throws Exception{
		HttpSession session = request.getSession();
		trainer = trainerdao.getTrainerByTrainerID(Integer.parseInt(request.getParameter("trainerid")));
		courses = trainer.getCourses();
		documents = trainer.getDocuments();
		categories = categorydao.getAllCategory();
		
		if(session.getAttribute("role")!=null && session.getAttribute("role").equals("learner")){
			
			learner = userdao.getUserById((int)session.getAttribute("usid")).getLearners().get(0);
			
			trainerRated = trainerratedao.trainerRated(trainer.getTrainerId(), learner.getLearnerId());
		}
		
		return SUCCESS;
	}
	
	public String showTrainer() throws Exception{
		trainers = trainerdao.display();
		blockList = trainerdao.blockList();
		
		return "success";
	}
	
	public String getProfile() throws Exception{
		
		HttpSession session = request.getSession();
		
		int userid = (int)session.getAttribute("usid");
		
		List<Trainer> ls = trainerdao.getProfile(userid);
		
		numberOfnotyetSeen = messagedao.countMessageNotYetSeen(userid);
		
		trainer = (Trainer)ls.get(0);
		field = trainer.getField();
		user = trainer.getUsers();
		documents = trainer.getDocuments();
		
		fields = fielddao.getAllField();
		categories = categorydao.getAllCategory();
		
		return "success";
	}
	
	public String convertBinaryToImage() throws Exception{
		
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("image/png");
		BufferedImage bi;
		OutputStream os = response.getOutputStream();
		InputStream in = new ByteArrayInputStream(user.getAvatar());
		bi = ImageIO.read(in);
		ImageIO.write(bi, "PNG", os);
		os.flush();
		return "success";
	}
	
	public String initTrainer() throws Exception{
		
		trainers = trainerdao.getAllTrainer();
		
		categories = categorydao.getAllCategory();
		return SUCCESS;
	}
	
	
	
	public MessageDAO getMessagedao() {
		return messagedao;
	}

	public void setMessagedao(MessageDAO messagedao) {
		this.messagedao = messagedao;
	}

	public int getNumberOfnotyetSeen() {
		return numberOfnotyetSeen;
	}

	public void setNumberOfnotyetSeen(int numberOfnotyetSeen) {
		this.numberOfnotyetSeen = numberOfnotyetSeen;
	}

	public List<Field> getFields() {
		return fields;
	}

	public void setFields(List<Field> fields) {
		this.fields = fields;
	}

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

	public CategoryDAO getCategorydao() {
		return categorydao;
	}

	public void setCategorydao(CategoryDAO categorydao) {
		this.categorydao = categorydao;
	}

	public File getMyFile() {
		return myFile;
	}

	public void setMyFile(File myFile) {
		this.myFile = myFile;
	}


	public List<Document> getDocuments() {
		return documents;
	}

	public void setDocuments(List<Document> documents) {
		this.documents = documents;
	}

	public Object getOb() {
		return ob;
	}

	public void setOb(Object ob) {
		this.ob = ob;
	}


	
	public byte[] getDocumentData() {
		return documentData;
	}

	public void setDocumentData(byte[] documentData) {
		this.documentData = documentData;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	
	public String getFieldId() {
		return fieldId;
	}

	public TrainerRateDAO getTrainerratedao() {
		return trainerratedao;
	}

	public void setTrainerratedao(TrainerRateDAO trainerratedao) {
		this.trainerratedao = trainerratedao;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isTrainerRated() {
		return trainerRated;
	}

	public void setTrainerRated(boolean trainerRated) {
		this.trainerRated = trainerRated;
	}

	public Learner getLearner() {
		return learner;
	}

	public void setLearner(Learner learner) {
		this.learner = learner;
	}

	public void setFieldId(String fieldId) {
		this.fieldId = fieldId;
	}

	public UserDAO getUserdao() {
		return userdao;
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

	public FieldDAO getFielddao() {
		return fielddao;
	}

	public void setFielddao(FieldDAO fielddao) {
		this.fielddao = fielddao;
	}

	public Trainer getTrainer() {
		return trainer;
	}

	public void setTrainer(Trainer trainer) {
		this.trainer = trainer;
	}

	public Field getField() {
		return field;
	}

	public void setField(Field field) {
		this.field = field;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		request = arg0;
		
	}

	public UserAction getUseraction() {
		return useraction;
	}

	public void setUseraction(UserAction useraction) {
		this.useraction = useraction;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
	

	public String getPasswordTrainer() {
		return passwordTrainer;
	}

	public ImageAction getImageaction() {
		return imageaction;
	}

	public void setImageaction(ImageAction imageaction) {
		this.imageaction = imageaction;
	}

	public List<Course> getCourses() {
		return courses;
	}

	public void setCourses(List<Course> courses) {
		this.courses = courses;
	}

	public void setPasswordTrainer(String passwordTrainer) {
		this.passwordTrainer = passwordTrainer;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public byte[] getAvatar() {
		return avatar;
	}

	public void setAvatar(byte[] avatar) {
		this.avatar = avatar;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getBiography() {
		return biography;
	}

	public void setBiography(String biography) {
		this.biography = biography;
	}

	

	public List<Trainer> getTrainers() {
		return trainers;
	}

	public void setTrainers(List<Trainer> trainers) {
		this.trainers = trainers;
	}

	public List<Trainer> getWaitList() {
		return waitList;
	}

	public void setWaitList(List<Trainer> waitList) {
		this.waitList = waitList;
	}

	public List<Trainer> getBlockList() {
		return blockList;
	}

	public void setBlockList(List<Trainer> blockList) {
		this.blockList = blockList;
	}

	public String getUserName1() {
		return userName1;
	}

	public void setUserName1(String userName1) {
		this.userName1 = userName1;
	}

	public String getCheck() {
		return check;
	}

	public void setCheck(String check) {
		this.check = check;
	}
	
}
