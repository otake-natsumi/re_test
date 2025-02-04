package com.corvadev.illustsite.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.corvadev.illustsite.dao.IllustInfoDAO;
import com.corvadev.illustsite.dto.IllustInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class IllustAction extends ActionSupport implements SessionAware{
	private List<IllustInfoDTO> illustInfoDTOList;
	private Map<String, Object> session;

	public String execute() {
		//sessionがタイムアウトのチェック
		if(!session.containsKey("mCategoryDTOList")) {
			return "sessionTimeout";
		}

		IllustInfoDAO illustInfoDAO = new IllustInfoDAO();
		illustInfoDTOList = illustInfoDAO.getIllustInfoList();

		return SUCCESS;
	}

	public List<IllustInfoDTO> getIllustInfoDTOList() {
		return illustInfoDTOList;
	}
	public void setIllustInfoDTOList(List<IllustInfoDTO> illustInfoDTOList) {
		this.illustInfoDTOList = illustInfoDTOList;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
