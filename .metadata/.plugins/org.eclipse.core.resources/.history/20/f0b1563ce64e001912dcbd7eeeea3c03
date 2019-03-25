package com.corvadev.illustsite.action;

import com.opensymphony.xwork2.ActionSupport;

public class IllustOpenAction extends ActionSupport{


	<s:iterator value="productInfoDTOList">
	<div class="product-list-box">
	<ul>
		<li>
		<a href='<s:url action="ProductDetailsAction">
		<s:param name="productId" value="%{productId}"/>
		</s:url>'><img src='<s:property value="imageFilePath"/>/<s:property value="imageFileName"/>' class="item-image-box-200"/></a><br>
		<s:property value="productName"/><br>
		<s:property value="productNameKana"/><br>
		<s:property value="price"/>円<br>
	  </li>
	</ul>
	</div>
	</s:iterator>


	private String title;

	public String getTitle(){
		return title;
	}
	public void setTitle(String title){
		this.title = title;
	}

}