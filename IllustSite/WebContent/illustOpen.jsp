<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ taglib prefix="s" uri="/struts-tags"  %>

<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta http-equiv="Content-Syle-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />

 	<title>イラスト一覧</title>

 	<style type="text/css">

 	</style>
</head>
<body>
<div id="contents">
	<h1>イラスト</h1>



<s:if test="!illustName.isEmpty()">
	<s:form action="AddCartAction" >
	<div class="box">
	<div class="2column-container">
	<div class="right">
		<img src='<s:property value="imageFilePath"/>/<s:property value="imageFileName"/>' class="item-image-box-320"/><br>
	</div>
	<div class="left">
	<table class="vertical-list-table-mini">
		<tr>
		<th scope="row"><s:label value="タイトル"/></th>
		<td><s:property value="illustName"/></td>
		</tr>
		<tr>
		<th scope="row"><s:label value="作品説明"/></th>
		<td><s:property value="illustDescribe"/></td>
		</tr>
		</table>
	</div>
	</div>
	<s:hidden name="illustId" value="%{illustId}"/>
	</div>
	</s:form>
	<div class="box">
		<div class="product-details-recomｍend-box">
		<s:iterator value="Illust">
				<div class="recommend-box">
				<a href='<s:url action="illustOpenAction">
 				<s:param name="illustId" value="illustId"/>
				</s:url>'><img src='<s:property value="imageFilePath"/>/<s:property value="imageFileName"/>' class="illust"/></a>
				<s:property value="illustName"/><br>
				</div>
		</s:iterator>
		</div>
	</div>

</s:if>
</div>
</body>
</html>