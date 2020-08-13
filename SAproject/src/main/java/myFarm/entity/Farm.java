package myFarm.entity;

import java.io.Serializable;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: myFarm
 *
 */

@Entity
@Table(name="MyPage")
public class Farm implements Serializable {
	@Id
	private String farmName;
	private String businessNum;
	private String photo;
	private String comment;
	private String sales;
	private String ratings;
	private String avgStar;
	
	public Farm() {
		super();
	}
	
	public String getFarmName() {
		return farmName;
	}
	public void setFarmName(String farmName) {
		this.farmName = farmName;
	}
	public String getBusinessNum() {
		return businessNum;
	}
	public void setBusinessNum(String businessNum) {
		this.businessNum = businessNum;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getSales() {
		return sales;
	}
	public void setSales(String sales) {
		this.sales = sales;
	}
	public String getRatings() {
		return ratings;
	}
	public void setRatings(String ratings) {
		this.ratings = ratings;
	}
	public String getAvgStar() {
		return avgStar;
	}
	public void setAvgStar(String avgStar) {
		this.avgStar = avgStar;
	}
}
