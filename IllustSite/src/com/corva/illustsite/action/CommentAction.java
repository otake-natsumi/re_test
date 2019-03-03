package com.corva.illustsite.action;
	import java.util.Map;
	import org.apache.struts2.interceptor.SessionAware;
	import com.opensymphony.xwork2.ActionSupport;
	;
public class CommentAction extends ActionSupport implements SessionAware{

	private String nick_name;
	private String comment;
	public Map<String, Object> session;
	private String result;
	private String errorMessage;

	public String execute(){
		result = SUCCESS;

		if(!(nick_name.equals(""))
			&& !(comment.equals(""))){
				session.put("nick_name", nick_name);
				session.put("comment", comment);
		}else{
			setErrorMessage("未入力の内容があります");
			result = ERROR;
		}
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
	public String getErrorMessage(){
		return errorMessage;
	}
	public void setErrorMessage(String errorMessage){
		this.errorMessage = errorMessage;
	}
}
