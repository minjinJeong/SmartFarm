package account.entity;

import java.io.Serializable;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: account
 *
 */
@Entity
@Table(name="Members")
public class Account implements Serializable {
	@Id
	@GeneratedValue
	private String id;
	private String password;
	private String name;
	private String email;
	private String phone;
	private String addr;
	private String businessNum;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getBusinessNum() {
		return businessNum;
	}

	public void setBusinessNum(String businessNum) {
		this.businessNum = businessNum;
	}
	
	public Account(){
		super();
	}
   
}
