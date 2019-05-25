package com.action;

import java.io.File;
import java.io.FileInputStream;

import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;

public class FileAction {
	
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
	
}
