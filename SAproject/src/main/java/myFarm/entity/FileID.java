package myFarm.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class FileID implements Serializable {
	@Column(name = "g_no")
	private int gno;

	@Column(name = "businessNum")
	private String businessNum;

	public int getGno() {
		return gno;
	}

	public void setGno(int gno) {
		this.gno = gno;
	}

	public String getBusinessNum() {
		return businessNum;
	}

	public void setBusinessNum(String businessNum) {
		this.businessNum = businessNum;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		FileID other = (FileID) obj;
		if (businessNum == null) {
			if (other.businessNum != null)
				return false;
		} else if (!businessNum.equals(other.businessNum))
			return false;
		if (gno != other.gno)
			return false;
		return true;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((businessNum == null) ? 0 : businessNum.hashCode());
		result = prime * result + gno;
		return result;
	}
}
