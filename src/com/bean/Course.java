package com.bean;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="course")
public class Course {
	
	@Id
	@GeneratedValue
	private int courseId;

	@Column(name="curriculum")
	private byte[] curriculum;
	
	@Column(name="title")
	private String title;
	
	@Column(name="subtitle")
	private String subTitle;
	
	@Column(name="description")
	private String description;
	
	@Column(name="fee")
	private int fee;
	
	@Column(name="image")
	private byte[] image;
	
	@Column(name="video")
	private String video;
	
	@Column(name="rate")
	private float rate;
	
	@Column(name="isdeleted")
	private boolean isDeleted;
	
	@Column(name="status")
	private short status;
	
	@Column(name="totalview")
	private int totalView;
	
	@Column(name="totalcomment")
	private int totalComment;
	
	@Column(name="totalCourseSaved")
	private int totalCourseSaved;
	
	@Column(name="answer1")
	private String answer1;
	
	@Column(name="answer2")
	private String answer2;
	
	@Column(name="answer3")
	private String answer3;
	
	@Column(name="createdTime")
	private Date createdTime;
	
	@ManyToOne
	@JoinColumn(name="categoryid")
	private Category category;
	
	@ManyToOne
	@JoinColumn(name="languageid")
	private Language language;
	
	@ManyToOne
	@JoinColumn(name="levelid")
	private Level level;
	
	@ManyToOne
	@JoinColumn(name="trainerid")
	private Trainer trainer;
	
	@OneToMany(mappedBy="course")
	private List<Comment> comments;
	
	@OneToMany(mappedBy="course")
	private List<CourseView> courseviews;

	@OneToMany(mappedBy="pk.course")
	private List<History> histories;
	
	@OneToMany(mappedBy="pk.course")
	private List<CourseRate> courserates;
	
	
	
	public int getTotalCourseSaved() {
		return totalCourseSaved;
	}
	public void setTotalCourseSaved(int totalCourseSaved) {
		this.totalCourseSaved = totalCourseSaved;
	}
	public Date getCreatedTime() {
		return createdTime;
	}
	public void setCreatedTime(Date createdTime) {
		this.createdTime = createdTime;
	}
	public List<CourseRate> getCourserates() {
		return courserates;
	}
	public void setCourserates(List<CourseRate> courserates) {
		this.courserates = courserates;
	}
	
	public List<History> getHistories() {
		return histories;
	}
	public List<CourseView> getCourseviews() {
		return courseviews;
	}
	public void setCourseviews(List<CourseView> courseviews) {
		this.courseviews = courseviews;
	}
	public void setHistories(List<History> histories) {
		this.histories = histories;
	}
	public List<Comment> getComments() {
		return comments;
	}
	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}
	public int getTotalComment() {
		return totalComment;
	}
	public void setTotalComment(int totalComment) {
		this.totalComment = totalComment;
	}
	public String getAnswer1() {
		return answer1;
	}
	public void setAnswer1(String answer1) {
		this.answer1 = answer1;
	}
	public String getAnswer2() {
		return answer2;
	}
	
	public byte[] getCurriculum() {
		return curriculum;
	}
	public void setCurriculum(byte[] curriculum) {
		this.curriculum = curriculum;
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
	public int getCourseId() {
		return courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

	public int getFee() {
		return fee;
	}
	public void setFee(int fee) {
		this.fee = fee;
	}
	
	public byte[] getImage() {
		return image;
	}
	public void setImage(byte[] image) {
		this.image = image;
	}
	public String getVideo() {
		return video;
	}
	public void setVideo(String video) {
		this.video = video;
	}
	
	
	
	public float getRate() {
		return rate;
	}
	public void setRate(float rate) {
		this.rate = rate;
	}
	public boolean isDeleted() {
		return isDeleted;
	}
	public void setDeleted(boolean isDeleted) {
		this.isDeleted = isDeleted;
	}
	public short getStatus() {
		return status;
	}
	public void setStatus(short status) {
		this.status = status;
	}
	
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Language getLanguage() {
		return language;
	}
	public void setLanguage(Language language) {
		this.language = language;
	}
	public Level getLevel() {
		return level;
	}
	public void setLevel(Level level) {
		this.level = level;
	}
	public Trainer getTrainer() {
		return trainer;
	}
	public void setTrainer(Trainer trainer) {
		this.trainer = trainer;
	}
	public int getTotalView() {
		return totalView;
	}
	public void setTotalView(int totalView) {
		this.totalView = totalView;
	}
	
	
	
}
