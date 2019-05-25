package com.bean;

import javax.persistence.AssociationOverride;
import javax.persistence.AssociationOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="courserate")
@AssociationOverrides({
	@AssociationOverride(name="pk.course", joinColumns = @JoinColumn(name="courseid")),
	@AssociationOverride(name="pk.learner", joinColumns = @JoinColumn(name="learnerid"))
})
public class CourseRate {
	@EmbeddedId
	private LearnerCourseId pk = new LearnerCourseId();
	
	@Column(name="rate")
	private float rate;

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
	public float getRate() {
		return rate;
	}
	public void setRate(float rate) {
		this.rate = rate;
	}
	
	
	
	
	
	
}
