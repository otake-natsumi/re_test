package com.internousdev.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class HomeAction extends ActionSupport implements SessionAware{
	public Map<String, Object> session;

	public String execute(){
		String result = "login";
		if(session.containsKey("id")){
			BuyItenDAO buyItemDAO = new BuyItenDAO();
			BuyItenDTO buyItenDTO = buyItenDTO.getBuyItenInfo();
			session.put("id", buyItenDTO.getId());
			session.put("buyIten_name", buyItenDTO.getItemName());
			session.put("buyIten_price", buyItenDTO.getItemPrice());
		}
			result = SUCCESS;
		}

		public Map<String, Object> getSession(){
			return session;
		}

		@Override
		public void setSession(Map<String, Object> session){
			this.session = session;
		}
}
