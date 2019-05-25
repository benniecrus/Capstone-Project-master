package test;

import java.io.File;
import java.io.FileInputStream;

import com.opensymphony.xwork2.ActionSupport;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;

public class TestAction extends ActionSupport {
	private String level1;
	private File image;
	
	public String execute(){

		byte[] imageData = convertImageToBinary(image);
		System.out.println(imageData.length);
		
		return SUCCESS;
	}

	public byte[] convertImageToBinary(File file){
		try{

		FileInputStream imageInFile = new FileInputStream(file);
		byte imageData[] = new byte[(int) file.length()];
		imageInFile.read(imageData); 
		Base64.encode(imageData);
		return imageData;
		}catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
	
	public String getLevel1() {
		return level1;
	}

	public void setLevel1(String level1) {
		this.level1 = level1;
	}

	public File getImage() {
		return image;
	}

	public void setImage(File image) {
		this.image = image;
	}

	
	
	
	
}
