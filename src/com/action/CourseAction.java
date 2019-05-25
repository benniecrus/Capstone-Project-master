package com.action;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.bean.Category;
import com.bean.Course;
import com.bean.History;
import com.bean.Language;
import com.bean.Learner;
import com.bean.Level;
import com.bean.Trainer;
import com.bean.Users;
import com.dao.CategoryDAO;
import com.dao.CourseDAO;
import com.dao.CourseRateDAO;
import com.dao.HistoryDAO;
import com.dao.LanguageDAO;
import com.dao.LevelDAO;
import com.dao.TrainerDAO;
import com.dao.UserDAO;
import com.opensymphony.xwork2.ActionSupport;

public class CourseAction extends ActionSupport implements ServletRequestAware{
	private HttpServletRequest request;
	private List<Level> levels;
	private List<Language> languages;
	private List<Category> categories;
	private List<History> histories;
	private List<Trainer> trainers;
	private Trainer trainer;
	private Users user;
	private LevelDAO leveldao = new LevelDAO();
	private LanguageDAO languagedao = new LanguageDAO();
	private CategoryDAO categorydao = new CategoryDAO();
	private UserDAO userdao = new UserDAO();
	private CourseDAO coursedao = new CourseDAO();
	private TrainerDAO trainerdao = new TrainerDAO();
	private FileAction fileaction = new FileAction();
	private HistoryDAO historydao = new HistoryDAO();
	private CourseRateDAO courseratedao = new CourseRateDAO();
	private ImageAction imageaction = new ImageAction();
	private String answer1;
	private String answer2;
	private String answer3;
	private String courseTitle;
	private String courseSubTitle;
	private String courseDescription;
	private String languageId;
	private String levelId;
	private Category category;
	private String tag;
	private File courseImage;
	private File curriculum;
	private String price;
	private Course course;
	private String categoryId;
	private List<Course> courses;
	private List<Course> waitingCourse;
	private List<Course> relatedCourse;
	private Learner learner;
	private File courseVideo;
	private String courseVideoContentType;
	private String courseVideoFileName;
	private String destPath;
	private File destFile;
	private History history;
	private String courseId;
	private boolean booleanValue = true;
	private boolean courseRated = true;
	private String searchString;
	private String trainerId;
	private int categoryView = 0;
	private int courseSaved = 0;
	private int rate1 = 0;
	private int rate2 = 0;
	private int rate3 = 0;
	private int rate4 = 0;
	private int rate5 = 0;
	private List<Course> topNew;
	private List<Course> topView;
	private List<Course> topRate;
	private String title;
	private String subTitle;
	private File myFile;
	private File myImage;
	private String fee;
	private String description;
	private String video;
	private String userName;
	private String courseName;
	private String check;
	public String initAddCourse(){
		try{
		user = userdao.getUserByUserName(request.getParameter("usname"));
		levels = leveldao.getAllLevel();
		languages = languagedao.getAllLanguage();
		categories = categorydao.getAllCategory();
		}catch(Exception e){
			return "error";
		}
		return SUCCESS;
	}
	
	public String updateCourse(){
		
		course = coursedao.getCourseByCourseId(Integer.parseInt(courseId));
		
		course.setTitle(title.trim());
		course.setSubTitle(subTitle.trim());
		course.setAnswer1(answer1.trim());
		course.setAnswer2(answer2.trim());
		course.setAnswer3(answer3.trim());
		course.setCategory(categorydao.getCategoryById(Integer.parseInt(categoryId.trim())));
		course.setLevel(leveldao.getLevelById(Integer.parseInt(levelId.trim())));
		course.setLanguage(languagedao.getLanguageById(Integer.parseInt(languageId.trim())));
		course.setDescription(description);
		course.setVideo(video);
		if(myFile != null)
			course.setCurriculum(imageaction.convertImageToBinary(myFile));
		
		if(myImage!=null)
			course.setImage(imageaction.convertImageToBinary(myImage));
		try{
		course.setFee(Integer.parseInt(fee.trim()));
		}catch(Exception e){
			course.setFee(0);
		}
		course.setStatus((short)0);
		coursedao.updateCourse(course);
		return SUCCESS;
	}
	
	public String initCourse() throws Exception{
		try{
		categories = categorydao.getAllCategory();
		
		courses = coursedao.getAllCourse();
		
		trainers = trainerdao.getAllTrainer();
		
		waitingCourse = coursedao.getWaitingCourse();
		
		topNew = coursedao.getTopNewCourse();
		topView = coursedao.getAllCourse();
		topRate = coursedao.getTopRateCourse();
		
		levels = leveldao.getAllLevel();
		}catch(Exception e){
			return "error";
		}
		return SUCCESS;
	}
	
	public String getCourseByCategoryId() throws Exception{
		try{
			
		courses = coursedao.getCourseByCategoryID(Integer.parseInt(categoryId));
		topNew = coursedao.getTopNewCourseByCategoryID(Integer.parseInt(categoryId));
		topRate = coursedao.getTopRateCourseByCategoryID(Integer.parseInt(categoryId));
		topView = coursedao.getCourseByCategoryID(Integer.parseInt(categoryId));
		
		categories = categorydao.getAllCategory();
		}catch(Exception e){
			return "error";
		}
		return SUCCESS;
	}
	
	public String getCourseByTrainerId() throws Exception{
		try{
		categories = categorydao.getAllCategory();
		
		trainer = trainerdao.getTrainerByTrainerID(Integer.parseInt(trainerId));
		
		courses = trainer.getCourses();
		
		trainers = trainerdao.getAllTrainer();
		
		levels = leveldao.getAllLevel();
		}catch(Exception e){
			return "error";
		}
		return SUCCESS;
	}
	
	
	public String initCourseManagement() throws Exception{
		try{
		HttpSession session = request.getSession();
		int userId = (int)session.getAttribute("usid");
		
		user = userdao.getUserById(userId);
		
		trainer = user.getTrainers().get(0);
		
		courses = coursedao.getCourseByTrainerIDOrderByName(trainer.getTrainerId());
		
		categories = categorydao.getAllCategory();
		}catch(Exception e){
			return "error";
		}
		return SUCCESS;
	}
	
	public String addNewCourse() throws Exception{
		try{
		HttpSession session = request.getSession();
		int userId = (int)session.getAttribute("usid");
		trainer = userdao.getUserById(userId).getTrainers().get(0);
		course = new Course();
		course.setCurriculum(fileaction.convertImageToBinary(curriculum));
		course.setTitle(courseTitle);
		course.setSubTitle(courseSubTitle);
		
		if(courseDescription != null && answer1 != null && answer2 != null && answer3 != null){
			
			course.setDescription(courseDescription);
			course.setAnswer1(answer1);
			course.setAnswer2(answer2);
			course.setAnswer3(answer3);
		}else{
			return "error";
			
			}
		
		course.setLanguage(languagedao.getLanguageById(Integer.parseInt(languageId)));
		course.setLevel(leveldao.getLevelById(Integer.parseInt(levelId)));
		course.setCategory(categorydao.getCategoryById(Integer.parseInt(categoryId)));
		course.setTrainer(trainer);
		course.setFee(Integer.parseInt(price));
		
		course.setImage(fileaction.convertImageToBinary(courseImage));
		if(video != null && !video.equals("")) {
			course.setVideo(video);
		}
		course.setTotalView(0);
		course.setRate(0);
		course.setDeleted(false);
		course.setStatus((short)0);
		course.setCreatedTime(new Date());
		coursedao.addNewCourse(course);
		
		categories = categorydao.getAllCategory();
		}catch(Exception e){
			return "error";
		}
		return SUCCESS;
	}
	
	public String getVideoPath() throws Exception{
		String applicationPath = request.getServletContext().getRealPath("");
		destPath = applicationPath+"/files/";
		String fname="";
		try{
			int x = courseVideoFileName.lastIndexOf(".");
			String extendtion = courseVideoFileName.substring(x);
			fname=createName()+extendtion;
			destFile = new File(destPath, fname);
			FileUtils.copyFile(courseVideo, destFile);
		}
		catch(IOException e){
			e.printStackTrace();
			return ERROR;
		}
		categories = categorydao.getAllCategory();
		return destFile.getPath();
	}
	
	private String createName(){
		String name="";
		Date now = new Date();
		name+=now.getYear()+"_"+now.getMonth()+"_"+
		now.getDay()+"_"+now.getHours()+"_"+now.getMinutes()
		+"_"+now.getSeconds()+"_"+Math.random();
		return name;
	}
	
	public String saveCourse() throws Exception{
		try{
		HttpSession session = request.getSession();
		course = coursedao.getCourseByCourseId(Integer.parseInt(request.getParameter("courseId")));
		learner = userdao.getUserById((int)session.getAttribute("usid")).getLearners().get(0);
		
		histories = historydao.getAHistory(course.getCourseId(), learner.getLearnerId());
		
		history = histories.get(0);
		if(history.isSaved()==false)
		history.setSaved(true);
		}catch(Exception e){
			return "error";
		}
		return SUCCESS;
	}
	
	public String courseDetail() throws Exception{
		try{
		HttpSession session = request.getSession();
		course = coursedao.getCourseByCourseId(Integer.parseInt(request.getParameter("courseId")));
		relatedCourse = coursedao.getTop4CourseByCategoryID(course.getCategory().getCategoryId());
//		session.setAttribute("status", user.getStatus());
		if(session.getAttribute("role") != null && session.getAttribute("role").equals("learner"))
		{
			learner = userdao.getUserById((int)session.getAttribute("usid")).getLearners().get(0);
			histories = historydao.getAHistory(course.getCourseId(), learner.getLearnerId());
			courseRated = courseratedao.isRated(course.getCourseId(), learner.getLearnerId());
			if(histories.size()>0){
				history = histories.get(0);
				history.setTime(new Date());
				historydao.updateHistory(history);
			}
			else
			{
				history = new History();
				history.setCourse(course);
				history.setLearner(learner);
				history.setTime(new Date());
				history.setSaved(false);
				historydao.addNewHistory(history);
			}
			
			booleanValue = history.isSaved();
			
		}
		categories = categorydao.getAllCategory();
		levels = leveldao.getAllLevel();
		languages = languagedao.getAllLanguage();
		rate1 = courseratedao.numberRateCourse(Integer.parseInt(request.getParameter("courseId")), 1);
		rate2 = courseratedao.numberRateCourse(Integer.parseInt(request.getParameter("courseId")), 2);
		rate3 = courseratedao.numberRateCourse(Integer.parseInt(request.getParameter("courseId")), 3);
		rate4 = courseratedao.numberRateCourse(Integer.parseInt(request.getParameter("courseId")), 4);
		rate5 = courseratedao.numberRateCourse(Integer.parseInt(request.getParameter("courseId")), 5);
		
		}catch(Exception e){
			return "error";
		}
		return SUCCESS;
	}
	
	public String deleteCourse() throws Exception{
		try{
		course = coursedao.getCourseByCourseId(Integer.parseInt(courseId));
		
		coursedao.deleteCourse(course);
		courses = coursedao.getAllCourse();
		}catch(Exception e){
			return "error";
		}
		return SUCCESS;
	}
	
	public String validCourse() throws Exception{
		course = coursedao.getCourseByCourseId(Integer.parseInt(request.getParameter("id")));
		userName = course.getTrainer().getUsers().getUserName();
		courseName = course.getTitle();
		check = "accept";
		coursedao.validCourse(course);
		courses = coursedao.getAllCourse();
		HttpSession session = request.getSession();
		session.setAttribute("newcourse", coursedao.getWaitingCourse().size());
		return SUCCESS;
	}
	public String rejectCourse() throws Exception{
		
		course = coursedao.getCourseByCourseId(Integer.parseInt(request.getParameter("id")));
		course = coursedao.getCourseByCourseId(Integer.parseInt(request.getParameter("id")));
		userName = course.getTrainer().getUsers().getUserName();
		courseName = course.getTitle();
		check = "reject";
		coursedao.rejectCourse(course);
		courses = coursedao.getAllCourse();
		HttpSession session = request.getSession();
		session.setAttribute("newcourse", coursedao.getWaitingCourse().size());
		return SUCCESS;
	}
	
	public String editCourse() throws Exception{
		try{
		
		course = coursedao.getCourseByCourseId(Integer.parseInt(courseId));
		}catch(Exception e){
			return "error";
		}
		
		
		return SUCCESS;
	}
	
	
	public String searchCourse() throws Exception{
		try{
		courses = coursedao.searchCourse(searchString);
		
		categories = categorydao.getAllCategory();
		}catch(Exception e){
			return "error";
		}
		return "success";
	}
	
	public String viewStatistic() throws Exception{
		try{
		course = coursedao.getCourseByCourseId(Integer.parseInt(request.getParameter("courseId")));
		courses = coursedao.getCourseByCategoryID(Integer.parseInt(request.getParameter("categoryId")));
		category = categorydao.getCategoryById(Integer.parseInt(request.getParameter("categoryId")));
		courseSaved = historydao.getCourseSavedbyCourseID(Integer.parseInt(courseId)).size();
		
		}catch(Exception e){
			return "error";
		}
		return "success";
	}
	
	
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public ImageAction getImageaction() {
		return imageaction;
	}

	public void setImageaction(ImageAction imageaction) {
		this.imageaction = imageaction;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSubTitle() {
		return subTitle;
	}

	public void setSubTitle(String subTitle) {
		this.subTitle = subTitle;
	}

	public File getMyFile() {
		return myFile;
	}

	public void setMyFile(File myFile) {
		this.myFile = myFile;
	}

	public File getMyImage() {
		return myImage;
	}

	public void setMyImage(File myImage) {
		this.myImage = myImage;
	}

	public String getFee() {
		return fee;
	}

	public void setFee(String fee) {
		this.fee = fee;
	}

	public List<Course> getTopNew() {
		return topNew;
	}

	public void setTopNew(List<Course> topNew) {
		this.topNew = topNew;
	}

	public List<Course> getTopView() {
		return topView;
	}

	public void setTopView(List<Course> topView) {
		this.topView = topView;
	}

	public List<Course> getTopRate() {
		return topRate;
	}

	public void setTopRate(List<Course> topRate) {
		this.topRate = topRate;
	}

	public List<Course> getRelatedCourse() {
		return relatedCourse;
	}

	public void setRelatedCourse(List<Course> relatedCourse) {
		this.relatedCourse = relatedCourse;
	}

	public String getTrainerId() {
		return trainerId;
	}

	public void setTrainerId(String trainerId) {
		this.trainerId = trainerId;
	}

	public List<Trainer> getTrainers() {
		return trainers;
	}

	public void setTrainers(List<Trainer> trainers) {
		this.trainers = trainers;
	}

	public String getSearchString() {
		return searchString;
	}

	public void setSearchString(String searchString) {
		this.searchString = searchString;
	}

	public CourseRateDAO getCourseratedao() {
		return courseratedao;
	}

	public void setCourseratedao(CourseRateDAO courseratedao) {
		this.courseratedao = courseratedao;
	}

	public boolean isCourseRated() {
		return courseRated;
	}

	public void setCourseRated(boolean courseRated) {
		this.courseRated = courseRated;
	}

	public boolean isBooleanValue() {
		return booleanValue;
	}

	public void setBooleanValue(boolean booleanValue) {
		this.booleanValue = booleanValue;
	}

	public String getCourseId() {
		return courseId;
	}

	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}

	public List<History> getHistories() {
		return histories;
	}

	public void setHistories(List<History> histories) {
		this.histories = histories;
	}

	public HistoryDAO getHistorydao() {
		return historydao;
	}

	public void setHistorydao(HistoryDAO historydao) {
		this.historydao = historydao;
	}

	public History getHistory() {
		return history;
	}

	public void setHistory(History history) {
		this.history = history;
	}

	public Learner getLearner() {
		return learner;
	}

	public void setLearner(Learner learner) {
		this.learner = learner;
	}

	public TrainerDAO getTrainerdao() {
		return trainerdao;
	}

	public void setTrainerdao(TrainerDAO trainerdao) {
		this.trainerdao = trainerdao;
	}

	public FileAction getFileaction() {
		return fileaction;
	}

	public void setFileaction(FileAction fileaction) {
		this.fileaction = fileaction;
	}

	

	public String getVideo() {
		return video;
	}

	public void setVideo(String video) {
		this.video = video;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public List<Course> getCourses() {
		return courses;
	}

	public void setCourses(List<Course> courses) {
		this.courses = courses;
	}

	public String getCourseVideoContentType() {
		return courseVideoContentType;
	}

	public void setCourseVideoContentType(String courseVideoContentType) {
		this.courseVideoContentType = courseVideoContentType;
	}

	public String getCourseVideoFileName() {
		return courseVideoFileName;
	}

	public void setCourseVideoFileName(String courseVideoFileName) {
		this.courseVideoFileName = courseVideoFileName;
	}

	public String getDestPath() {
		return destPath;
	}

	public void setDestPath(String destPath) {
		this.destPath = destPath;
	}

	public int getCategoryView() {
		return categoryView;
	}

	public void setCategoryView(int categoryView) {
		this.categoryView = categoryView;
	}

	public File getDestFile() {
		return destFile;
	}

	public void setDestFile(File destFile) {
		this.destFile = destFile;
	}

	public LevelDAO getLeveldao() {
		return leveldao;
	}
	
	public Course getCourse() {
		return course;
	}

	public CourseDAO getCoursedao() {
		return coursedao;
	}

	public void setCoursedao(CourseDAO coursedao) {
		this.coursedao = coursedao;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public void setLeveldao(LevelDAO leveldao) {
		this.leveldao = leveldao;
	}

	public LanguageDAO getLanguagedao() {
		return languagedao;
	}

	public void setLanguagedao(LanguageDAO languagedao) {
		this.languagedao = languagedao;
	}

	public CategoryDAO getCategorydao() {
		return categorydao;
	}

	public void setCategorydao(CategoryDAO categorydao) {
		this.categorydao = categorydao;
	}

	public UserDAO getUserdao() {
		return userdao;
	}

	public void setUserdao(UserDAO userdao) {
		this.userdao = userdao;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public List<Level> getLevels() {
		return levels;
	}

	public void setLevels(List<Level> levels) {
		this.levels = levels;
	}

	public List<Language> getLanguages() {
		return languages;
	}

	public String getAnswer1() {
		return answer1;
	}

	public void setAnswer1(String answer1) {
		this.answer1 = answer1;
	}

	public Trainer getTrainer() {
		return trainer;
	}

	public void setTrainer(Trainer trainer) {
		this.trainer = trainer;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public void setLanguages(List<Language> languages) {
		this.languages = languages;
	}

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.request = arg0;
		
	}

	public String getAnswer2() {
		return answer2;
	}

	public void setAnswer2(String answer2) {
		this.answer2 = answer2;
	}

	public String getAnswer3() {
		return answer3;
	}

	public void setAnswer3(String answer3) {
		this.answer3 = answer3;
	}

	public String getCourseTitle() {
		return courseTitle;
	}

	public void setCourseTitle(String courseTitle) {
		this.courseTitle = courseTitle;
	}

	public String getCourseSubTitle() {
		return courseSubTitle;
	}

	public void setCourseSubTitle(String courseSubTitle) {
		this.courseSubTitle = courseSubTitle;
	}

	public String getCourseDescription() {
		return courseDescription;
	}

	public void setCourseDescription(String courseDescription) {
		this.courseDescription = courseDescription;
	}

	


	public String getLanguageId() {
		return languageId;
	}

	public void setLanguageId(String languageId) {
		this.languageId = languageId;
	}

	public String getLevelId() {
		return levelId;
	}

	public void setLevelId(String levelId) {
		this.levelId = levelId;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public File getCourseImage() {
		return courseImage;
	}

	public void setCourseImage(File courseImage) {
		this.courseImage = courseImage;
	}

	public File getCourseVideo() {
		return courseVideo;
	}

	public void setCourseVideo(File courseVideo) {
		this.courseVideo = courseVideo;
	}

	public File getCurriculum() {
		return curriculum;
	}

	public void setCurriculum(File curriculum) {
		this.curriculum = curriculum;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public List<Course> getWaitingCourse() {
		return waitingCourse;
	}

	public void setWaitingCourse(List<Course> waitingCourse) {
		this.waitingCourse = waitingCourse;
	}

	public int getRate1() {
		return rate1;
	}

	public void setRate1(int rate1) {
		this.rate1 = rate1;
	}

	public int getRate2() {
		return rate2;
	}

	public void setRate2(int rate2) {
		this.rate2 = rate2;
	}

	public int getRate3() {
		return rate3;
	}

	public void setRate3(int rate3) {
		this.rate3 = rate3;
	}

	public int getRate4() {
		return rate4;
	}

	public void setRate4(int rate4) {
		this.rate4 = rate4;
	}

	public int getRate5() {
		return rate5;
	}

	public void setRate5(int rate5) {
		this.rate5 = rate5;
	}

	public int getCourseSaved() {
		return courseSaved;
	}

	public void setCourseSaved(int courseSaved) {
		this.courseSaved = courseSaved;
	}

	public String getCheck() {
		return check;
	}

	public void setCheck(String check) {
		this.check = check;
	}
	
}
