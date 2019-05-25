package com.bean;

import java.io.Serializable;

import javax.persistence.AssociationOverride;
import javax.persistence.AssociationOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="trainerrate")
@AssociationOverrides({
	@AssociationOverride(name="pk.trainer", joinColumns = @JoinColumn(name="trainerid")),
	@AssociationOverride(name="pk.learner", joinColumns = @JoinColumn(name="learnerid"))
})
public class TrainerRate implements Serializable {
	@EmbeddedId
	private TrainerLearnerId pk = new TrainerLearnerId();
	
	@Column(name="rate")
	private float rate;
	
	@Transient
	private Learner learner;
	
	@Transient
	private Trainer trainer;

	public TrainerLearnerId getPk() {
		return pk;
	}

	public void setPk(TrainerLearnerId pk) {
		this.pk = pk;
	}

	public float getRate() {
		return rate;
	}

	public void setRate(float rate) {
		this.rate = rate;
	}

	public Learner getLearner() {
		return getPk().getLearner();
	}

	public void setLearner(Learner learner) {
		getPk().setLearner(learner);;
	}

	public Trainer getTrainer() {
		return getPk().getTrainer();
	}

	public void setTrainer(Trainer trainer) {
		getPk().setTrainer(trainer);;
	}
	
	
	
}
