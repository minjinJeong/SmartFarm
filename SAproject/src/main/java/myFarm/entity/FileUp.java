package myFarm.entity;

import java.io.Serializable;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="gallery")
public class FileUp implements Serializable {
	@EmbeddedId
	private FileID fileId;
	
	private String photo_path;
	private String comment;
	public FileID getFileId() {
		return fileId;
	}
	
	public FileUp() {
		super();
	}
	
	public void setBusinessNum(String num) {
		System.out.println(num);
		this.fileId.setBusinessNum(num);;
	}
	
	public void setGno(int no) {
		this.fileId.setGno(no);
	}
	
	public void setFileId(FileID fileId) {
		this.fileId = fileId;
	}
	public String getPhoto_path() {
		return photo_path;
	}
	public void setPhoto_path(String photo_path) {
		this.photo_path = photo_path;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	
}
