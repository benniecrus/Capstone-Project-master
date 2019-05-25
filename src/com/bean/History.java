package com.bean;

import java.util.Date;

import javax.persistence.AssociationOverride;
import javax.persistence.AssociationOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="history")
@AssociationOverrides({
	@AssociationOverride(name="pk.course", joinColumns = @JoinColumn(name="courseid")),
	@AssociationOverride(name="pk.learner", joinColumns = @JoinColumn(name="learnerid"))
})
public class History {
	@EmbeddedId
	private LearnerCourseId pk = new LearnerCourseId();
	
	@Column(name="time")
	private Date time;
	
	@Column(name="issaved")
	private boolean isSaved;
	
	@Transient
	private Course course;
	
	@Transient
	private Learner learner;
	
	
	
	public Course getCourse() {
		return getPk().getCourse();
	}
	public void setCourse(Course course) {
		getPk().setCourse(course);;
	}
	public Learner getLearner() {
		return getPk().getLearner();
	}
	public void setLearner(Learner learner) {
		getPk().setLearner(learner);;
	}
	
	
	
	public LearnerCourseId getPk() {
		return pk;
	}
	public void setPk(LearnerCourseId pk) {
		this.pk = pk;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public boolean isSaved() {
		return isSaved;
	}
	public void setSaved(boolean isSaved) {
		this.isSaved = isSaved;
	}
	
	
}
