<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta http-equiv="Content-Syle-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />

 	<title>top画面</title>

 	<style type="text/css">

   	 	/* ==========MAIN LAYOUT========== */
		body {
			margin:0;
			padding:0;
			line-height:1.6;
			font-family:Verdana, Helvetica, sans-serif;
			font-size:15px
		}
		#main{
			padding-top: 50px;
			color: black;
			text-align: center;
			whidth: 80%;
			height: 400px;
		}

		#main ul{
			width:	300px;
			font-size: 12px;
			padding: 0px 100px 10px 100px;
			list-style: none;
			display: inline-block;
			box-shadow: 0 0 10px 0 	#888888;
			border-radius: 8px;
 			margin-top: 40px;
			background: #FFFFEE;
			}

		.tamblr_iframe{
			margin: 0 auto;
			display: block;
			width: 80%;
			height: 500px;
		}
 	</style>

</head>
<body>
<jsp:include page = "header.jsp" />

		<div id="main">
			<h4>N.corvaのイラストサイトです。<br>
			Webに記載している作品の無断転載・使用はご遠慮ください。</h4>

			<ul>
				<li><h4>使用画材</h4></li>
				<li>ドローイングインク
				<li>透明水彩</li>
				<li>コッピク</li>
				<li>珈琲</li>
				<li>色鉛筆　など</li>
			</ul>
		</div>
test

<jsp:include page="footer.jsp" />

</body>
</html>