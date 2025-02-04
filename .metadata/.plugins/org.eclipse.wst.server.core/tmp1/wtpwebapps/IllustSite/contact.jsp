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
	<title>contact画面</title>

	 <style type="text/css">
	body{
		width: 100%;
		font-family: Verdana, Helvetica, sans-serif;
		font-size: 15px;
		color: black;
 		text-align: center;
	}

	#main{
 		margin: 50px;
		border-collapse: collapse;
		vertical-align: middle;
		display: inline-block;
	}

	.table{
		padding: 40px 20px 10px 10px;
		box-shadow: 0 0 8px #696969;
	}

	label{
		margin: 5px;
	}
	 </style>

</head>
<body>

<jsp:include page="header.jsp" flush="true" />

	<div id="main">
	<h2>コメント</h2>
		<div class="table">
		<s:form action="ContactConfirmAction">
			<tr>
				<td><label>ニックネーム</label></td>
				<td><input type="text" name="nick_name" size="49" value="" /></td>
			</tr>
			<tr>
				<td><label>コメント</label></td>
				<td><textarea name="comment" rows="8" cols="50" placeholder="ご自由にご記入ください。" ></textarea></td>
				<td><s:submit value="確認" /></td>
			</tr>
		</s:form>
		</div>
	</div>

<jsp:include page="footer.jsp" flush="true" />

</body>
</html>