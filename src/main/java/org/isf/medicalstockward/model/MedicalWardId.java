package org.isf.medicalstockward.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

import org.isf.medicals.model.Medical;
import org.isf.medicalstock.model.Lot;
import org.isf.ward.model.Ward;


/*------------------------------------------
 * Medical Ward - model for the medical entity
 * -----------------------------------------
 * modification history
 * ? - ?
 * 17/01/2015 - Antonio - ported to JPA
 * 29/01/2020 - Mwithi - redefined embeddable entity
 * 
 *------------------------------------------*/
@SuppressWarnings("serial")
@Embeddable
public class MedicalWardId implements Serializable 
{	
	@NotNull
	@ManyToOne
	@JoinColumn(name="MDSRWRD_WRD_ID_A")
	private Ward ward;

	@NotNull
	@ManyToOne
	@JoinColumn(name="MDSRWRD_MDSR_ID")
	private Medical medical;
	
	@ManyToOne
	@JoinColumn(name="MDSRWRD_LT_ID_A")
	private Lot lot;
	
	public MedicalWardId() 
	{
	}
	
	public MedicalWardId(Ward ward, Medical medical, Lot lot) 
	{
		this.ward = ward;
		this.medical = medical;
		this.lot = lot;
	}

	public Ward getWard() {
		return this.ward;
	}
	
	public void setWard(Ward ward) {
		this.ward = ward;
	}
	public Lot getLot() {
		return this.lot;
	}
	
	public void setLot(Lot lot) {
		this.lot = lot;
	}

	public Medical getMedical() {
		return this.medical;
	}
	
	public void setMedical(Medical medical) {
		this.medical = medical;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + medical.getCode();
		result = prime * result + ward.getCode().charAt(0);
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (!(obj instanceof MedicalWardId)) {
			return false;
		}
		MedicalWardId other = (MedicalWardId) obj;
		if (medical != other.medical) {
			return false;
		}
		if (ward != other.ward) {
			return false;
		}
		if (lot != other.lot) {
			return false;
		}
		return true;
	}
}
