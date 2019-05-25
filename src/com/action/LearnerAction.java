package com.action;

import java.io.File;
import java.util.Calendar;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.bean.Category;
import com.bean.History;
import com.bean.Job;
import com.bean.Learner;
import com.bean.Users;
import com.dao.CategoryDAO;
import com.dao.HistoryDAO;
import com.dao.JobDAO;
import com.dao.LearnerDAO;
import com.dao.MessageDAO;
import com.dao.UserDAO;
import com.opensymphony.xwork2.ActionSupport;

public class LearnerAction implements ServletRequestAware{
	
	private UserDAO userdao = new UserDAO();
	private LearnerDAO learnerdao = new LearnerDAO();
	private HistoryDAO historydao = new HistoryDAO();
	private JobDAO jobdao = new JobDAO();
	private Users user;
	private Object ob;
	private UserAction useraction;
	private HttpServletRequest request;
	private Learner learner;
	private ImageAction imageaction = new ImageAction();
	private String userName;
	private String password;
	private String passwordLearner;
	private String firstName;
	private String lastName;
	private String gender;
	private String dob;
	private String phoneNumber;
	private String address;
	private String biography;
	private String newPassword;
	private byte[] avatar;
	private Job job;
	private List<Learner> learners;
	private List<Learner> blockList;
	private List<Job> jobs;
	private String fullName;
	private String jobId;
	private File myFile;
	private List<Category> categories;
	private List<History> courseSaved;
	private CategoryDAO categorydao = new CategoryDAO();
	private int numberOfnotyetSeen;
	private MessageDAO messagedao = new MessageDAO();
	
	public String showLearner() throws Exception{
		learners = learnerdao.display();
		blockList = learnerdao.blockList();
		return "success";
	}
	
	
	public String blockLearner() throws Exception
	{
		int id = Integer.parseInt(request.getParameter("id"));
		learnerdao.block(id);
		learners = learnerdao.display();
		blockList = learnerdao.blockList();
		return "success";
	}
	
	public String unblockLearner() throws Exception
	{
		int id = Integer.parseInt(request.getParameter("id"));
		learnerdao.unblock(id);
		learners = learnerdao.display();
		blockList = learnerdao.blockList();
		return "success";
	}
	public String addLearner() throws Exception{
		password = passwordLearner;
		if(userdao.isExisted(userName.trim())){
			HttpSession session = request.getSession();
			session.setAttribute("learnerErrorMessage", "This email has been existed!");
			return "error";
		}
		
		Date date=null;
		
		try{
		
		date = new SimpleDateFormat("yyyy-MM-dd").parse(dob.toString().trim());
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		System.out.println(date);
		user = new Users();
		user.setUserName(userName);
		user.setPassword(password);
		user.setFullName(fullName);
		user.setPhoneNumber(phoneNumber);
		user.setBiography(biography);
		user.setStatus((short)1);
		user.setAddress(address);
		avatar = imageaction.convertImageToBinary(new File("E:\\WeTeach/WeTeach1/WebContent/image/download.png"));
		user.setAvatar(avatar);
		
		learner = new Learner();
		
		learner.setDob(date);
		learner.setGender(Short.parseShort(gender));
		learner.setJob(jobdao.getJobById(Integer.parseInt(jobId)));
		learner.setUsers(user);
		
		learnerdao.addLearner(user,learner);
		categories = categorydao.getAllCategory();
		return "success";
		}
		
	public String updateLearner() throws Exception
	{
		int userID = Integer.parseInt(request.getParameter("userID"));
		int learnerID = Integer.parseInt(request.getParameter("learnerID"));
		Date date = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("dob"));
		learnerdao.update(userID, learnerID, fullName, phoneNumber, date, Short.parseShort(gender), address);
		learners = learnerdao.display();
		blockList = learnerdao.blockList();
		return "success";
	}
	
	public String getLearnerProfile() throws Exception{
		
		HttpSession session = request.getSession();
		
		int userId = (int)session.getAttribute("usid");
		
		user = userdao.getUserById(userId);
		
		numberOfnotyetSeen = messagedao.countMessageNotYetSeen(userId);
		
		learner = user.getLearners().get(0);
		
		courseSaved = historydao.getCourseSaved(learner.getLearnerId());
		
		jobs = jobdao.getAllJob();
		categories = categorydao.getAllCategory();
		
		return "success";
	}
	
	public String updateLearnerAvatar() throws Exception{
		HttpSession session = request.getSession();
		int userId = (int)session.getAttribute("usid");
		
		user = userdao.getUserById(userId);
		
		user.setAvatar(imageaction.convertImageToBinary(myFile));
		
		return "success";
	}
	
	public String updateLearnerProfile() throws Exception{
		
		HttpSession session = request.getSession();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		int userId = (int)session.getAttribute("usid");
		
		user = userdao.getUserById(userId);
		
		learner = user.getLearners().get(0);
		
		if( !(fullName.trim().equals(user.getFullName()) && user.getBiography().equals(biography) && phoneNumber.equals(user.getPhoneNumber()) )){
			user.setFullName(fullName);
			user.setBiography(biography);
			user.setPhoneNumber(phoneNumber);
			userdao.updateUser(user);
		}
		
		if( !(learner.getGender()==Short.parseShort(gender) && sdf.parse(dob).compareTo(learner.getDob())== 0 && learner.getJob().getJobId()== Integer.parseInt(jobId))){
			learner.setGender(Short.parseShort(gender));
			learner.setDob(sdf.parse(dob));
			learner.setJob(jobdao.getJobById(Integer.parseInt(jobId)));
			learnerdao.updateLearner(learner);
		}
		
		return "success";
	}
	
	public String publicLearner() throws Exception{
		int learnerId = Integer.parseInt(request.getParameter("learnerid"));
		
		learner = learnerdao.getlearnerByLearnerId(learnerId);
		
		categories = categorydao.getAllCategory();
		
		return "success";
		
	}
	
	


	public int getNumberOfnotyetSeen() {
		return numberOfnotyetSeen;
	}


	public void setNumberOfnotyetSeen(int numberOfnotyetSeen) {
		this.numberOfnotyetSeen = numberOfnotyetSeen;
	}


	public MessageDAO getMessagedao() {
		return messagedao;
	}


	public void setMessagedao(MessageDAO messagedao) {
		this.messagedao = messagedao;
	}


	public String getPasswordLearner() {
		return passwordLearner;
	}


	public void setPasswordLearner(String passwordLearner) {
		this.passwordLearner = passwordLearner;
	}


	public HistoryDAO getHistorydao() {
		return historydao;
	}
	
	public File getMyFile() {
		return myFile;
	}


	public void setMyFile(File myFile) {
		this.myFile = myFile;
	}


	public String getNewPassword() {
		return newPassword;
	}


	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}


	public void setHistorydao(HistoryDAO historydao) {
		this.historydao = historydao;
	}

	public List<Learner> getLearners() {
		return learners;
	}
	public void setLearners(List<Learner> learners) {
		this.learners = learners;
	}

	public UserDAO getUserdao() {
		return userdao;
	}
	public void setUserdao(UserDAO userdao) {
		this.userdao = userdao;
	}
	public LearnerDAO getLearnerdao() {
		return learnerdao;
	}
	public void setLearnerdao(LearnerDAO learnerdao) {
		this.learnerdao = learnerdao;
	}
	public Learner getLearner() {
		return learner;
	}
	public void setLearner(Learner learner) {
		this.learner = learner;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	public Object getOb() {
		return ob;
	}
	public void setOb(Object ob) {
		this.ob = ob;
	}
	public UserAction getUseraction() {
		return useraction;
	}
	public void setUseraction(UserAction useraction) {
		this.useraction = useraction;
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public JobDAO getJobdao() {
		return jobdao;
	}

	public void setJobdao(JobDAO jobdao) {
		this.jobdao = jobdao;
	}

	public List<Job> getJobs() {
		return jobs;
	}


	public void setJobs(List<Job> jobs) {
		this.jobs = jobs;
	}


	public ImageAction getImageaction() {
		return imageaction;
	}

	public void setImageaction(ImageAction imageaction) {
		this.imageaction = imageaction;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	

	public String getDob() {
		return dob;
	}


	public void setDob(String dob) {
		this.dob = dob;
	}


	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getJobId() {
		return jobId;
	}

	public void setJobId(String jobId) {
		this.jobId = jobId;
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

	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
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
	public byte[] getAvatar() {
		return avatar;
	}
	public void setAvatar(byte[] avatar) {
		this.avatar = avatar;
	}
	public Job getJob() {
		return job;
	}
	public void setJob(Job job) {
		this.job = job;
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


	public List<Learner> getBlockList() {
		return blockList;
	}


	public void setBlockList(List<Learner> blockList) {
		this.blockList = blockList;
	}


	public List<History> getCourseSaved() {
		return courseSaved;
	}


	public void setCourseSaved(List<History> courseSaved) {
		this.courseSaved = courseSaved;
	}
	
}
