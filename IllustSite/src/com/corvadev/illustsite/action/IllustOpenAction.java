package com.corvadev.illustsite.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.corvadev.illustsite.dto.IllustInfoDTO;
import com.opensymphony.xwork2.ActionSupport;


public class IllustOpenAction extends ActionSupport implements SessionAware{

	private int flag;

	private int illustId;
	private String illustName;
	private String illustDescribe;
	private String imageFilePath;
	private String imageFileName;
	private List<Integer> illustCountList;
	private List<IllustInfoDTO> relatedIllustList;
	private Map<String, Object> session;

	public String exectute () {
		flag = 1;

		return SUCCESS;

	}

	public int getFlag() {
		return flag;
	}
	public void setFlag(int flag) {
		this.flag = flag;
	}


	public int getIllustId() {
		return illustId;
	}
	public void setIllustId(int illustId) {
		this.illustId = illustId;
	}

	public String getIllustName() {
		return illustName;
	}

	public void setIllustName(String illustName) {
		this.illustName = illustName;
	}

	public String getIllustDescribe() {
		return illustDescribe;
	}

	public void setIllustDescribe(String illustDescribe) {
		this.illustDescribe = illustDescribe;
	}

	public String getImageFilePath() {
		return imageFilePath;
	}

	public void setImageFilePath(String imageFilePath) {
		this.imageFilePath = imageFilePath;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public List<Integer> getIllustCountList() {
		return illustCountList;
	}

	public void setIllustCountList(List<Integer> illustCountList) {
		this.illustCountList = illustCountList;
	}

	public List<IllustInfoDTO> getRelatedIllustList() {
		return relatedIllustList;
	}

	public void setRelatedProductList(List<IllustInfoDTO> relatedIllustList) {
		this.relatedIllustList = relatedIllustList;
	}

	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
