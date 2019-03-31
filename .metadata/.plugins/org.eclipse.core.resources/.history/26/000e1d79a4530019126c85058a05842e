package com.corvadev.illustsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.corvadev.illustsite.dao.ContactCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class ContactCompleteAction extends ActionSupport implements SessionAware{

	private String nick_name;
	private String comment;
	public Map<String, Object> session;
	private ContactCompleteDAO contactCompleteDAO = new ContactCompleteDAO();

	public String execute() throws SQLException{
		contactCompleteDAO.createComment(session.get("nick_name").toString(),
										 session.get("comment").toString());

		String result = SUCCESS;
		return result;
	}
	public String getNick_name(){
		return nick_name;
	}
	public void setNick_name(String nick_name){
		this.nick_name = nick_name;
	}

	public String getComment(){
		return comment;
	}
	public void setComment(String comment){
		this.comment = comment;
	}

	public Map<String, Object> getSession(){
		return session;
	}
	@Override
	public void setSession(Map<String, Object> session){
		this.session = session;
	}
}
