<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"  %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<title>contactConfirm画面</title>

	 <style type="text/css">
	 	body{
	 		margin: 0;
	 		letter-spacing:1.6;
	 					text-align: center;
	 	}
		#main{
			padding-top: 50px;
			color: black;
			display: inline-block;
			text-align: center;
			whidth: 80%;

	 		v
		}

	 </style>
</head>
<body>

<div id="top">
	<h3>送信内容はこれで宜しいでしょうか？</h3>
</div>

<div id="main">
	<s:form action="CommentAction">
	<table>
		<tr>
			<td>ニックネーム</td>
			<td><s:property value="session.nick_name" /></td>
		</tr>
		<tr>
			<td>コメント</td>
			<td><s:property value="session.comment" /></td>
		</tr>
	</table>
	</s:form>

</div>



</body>
</html>