<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ taglib prefix="s" uri="/struts-tags"  %>

<!DOCTYPE html>
<html>

<jsp:include page="header.jsp" flush="true"/>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta http-equiv="Content-Syle-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />

 	<title>イラスト一覧</title>

 	<style type="text/css">
 	 	/* ==========MAIN LAYOUT========== */
 	 	#main{
 	 		whidth: 100%;
 	 		height: 0 auto;
 	 		text-align: center;
 	 		}

		table{
			display: inline-block;
			float: left;
			font-family: MS PMincho;
			font-size: 28px;
			padding-right: 150px;
		}

		.left{
			float: left;
			width: 25%;
			height: 1000px;
			background: pink;
			display: inline-block;
			margin: auto 0;
			text-align: center;
		}
		.right{
			float: right;
			width: 75%;
			height: 1000px;
			background: skyblue;
			display: inline-block;
			margin: auto 0;
			text-align: center;
		}



		#illust img{
			width: 80px;
			height: 80px;
			margin: 10px;
			object-position: 0 20%;
			display:flex;
			display: inline;
			justify-contnt: space-between;
			border: 1px solid #000;
		}
		#img{
			width: 80px;
			height: 80px;
			margin: 10px;
			object-position: 0 20%;
			display:flex;
			display: inline;
			justify-contnt: space-between;
			border: 1px solid #000;
		}

 	</style>

</head>
<body>
	<div id="main">
		<div class="left">
			<div id="illust">
			<table>

				<tr>
					<th>
					<h3>illust</h3>
						<a href='<s:url action="IllustOpenAction"></s:url>'><img src='illust/grow into one.jpg' alt='grow into one' /></a>
				</tr>
				<tr>
					<th>
					<h3>Fairy tale</h3>
						<a href='<s:url action="IllustOpenAction"></s:url>'><img src='illust/Fairy tale - sleeping beauty - .jpg'  alt='Fairy tale - sleeping beauty -'/></a>
					</th>
				</tr>
				<tr>
					<th>
					<h3>other</h3>
						<a href='<s:url action="IllustOpenAction"></s:url>'><img src='illust/朝顔 手ぬぐい 青.jpg' alt='朝顔 手ぬぐい 青' /></a>
						<a href='<s:url action="IllustOpenAction"></s:url>'><img src='illust/朝顔 手ぬぐい 赤.jpg' alt='朝顔 手ぬぐい 赤' /></a>
						<a href='<s:url action="IllustOpenAction"><s:param name="title" value="%{title}"/></s:url>'><img src='illust/馬.jpg' alt='馬 練習' /><s:property value="illustName"/></a>


						<a href='<s:url action="IllustOpenAction">
						<s:param name="illustId" value="%{illustId}"/>
						</s:url>'><img src='<s:property value="imageFilePath"/>/<s:property value="imageFileName"/>' class="illust"/></a><br>
						<s:property value="illustName"/><br>
						<s:property value="illustDescribe"/><br>


<%-- 						<a href='<s:url action="ProductDetailsAction"> --%>
<!-- 						<s:param name="productId" value="%{productId}"/> -->
<%-- 						</s:url>'><img src='<s:property value="vvv"/>/<s:property value="imageFileName"/>' class="illust"/></a><br> --%>
<%-- 						<s:property value="productName"/><br> --%>
<%-- 						<s:property value="productNameKana"/><br> --%>
					</th>
				</tr>

			</table>
			</div>
		</div>

<div id="contents">

<s:if test="!illustDTOList.isEmpty()">

<!-- <div id="product-list"> -->
<%-- <s:iterator value="illustDTOList"> --%>
<!-- 	<div class="AAA"> -->
<%-- 		<a href='<s:url action="IllustOpenAction"> --%>
<!-- 		<s:param name="title" value="%{title}"/> -->
<%-- 		</s:url>'><img src='<s:property value="illustName"/>'/></a> --%>
<%-- 		<s:property value="title"/><br> --%>
<!-- 	</div> -->
<%-- </s:iterator> --%>

<%-- <s:iterator value="IllustDTOList"> --%>
<!-- 	<div class="product-list-box"> -->
<%-- 		<a href='<s:url action="ProductDetailsAction"> --%>
<!-- 		<s:param name="productId" value="%{productId}"/> -->
<%-- 		</s:url>'><img src='<s:property value="imageFilePath"/>/<s:property value="imageFileName"/>' class="item-image-box-200"/></a><br> --%>
<%-- 		<s:property value="productName"/><br> --%>
<!-- 	</div> -->
<%-- </s:iterator> --%>

<!-- </div> -->
</s:if>

	<div class="right">
		<s:if test="flag == 1">
			<jsp:include page="illustOpen.jsp" flush="true"  />
		</s:if>

	</div>
</div>
	</div>

<jsp:include page="footer.jsp" flush="true" />

</body>
</html>