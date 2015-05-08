package com.action;

import java.io.File;

import com.opensymphony.xwork2.ActionSupport;

public class UploadFile extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private File myFile;
	private String myFileFileName;
	private String myFileName;

	public String upload() {
		
		
		return null;
	}

	public File getMyFile() {
		return myFile;
	}

	public void setMyFile(File myFile) {
		this.myFile = myFile;
	}

	public String getMyFileFileName() {
		return myFileFileName;
	}

	public void setMyFileFileName(String myFileFileName) {
		this.myFileFileName = myFileFileName;
	}

	public String getMyFileName() {
		return myFileName;
	}

	public void setMyFileName(String myFileName) {
		this.myFileName = myFileName;
	}
}
