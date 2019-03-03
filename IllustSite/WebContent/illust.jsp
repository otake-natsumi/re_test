<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>

<!DOCTYPE html>
<html>

<jsp:include page="header.jsp" flush="true" />


<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta http-equiv="Content-Syle-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />

 	<title>illust画面</title>

 	<style type="text/css">
 	 	/* ==========MAIN LAYOUT========== */
 	 	#main{
 	 		whidth: 100%;
 	 		height: 0 auto;
 	 		text-align: center;
 	 		}

		.left{
			float: left;
			width: 25%;
			height: 1000px;
			background: red;
		}
		.right{
			float: right;
			width: 75%;
			height: 1000px;
			background: blue;
		}

		h4{
			font-family: MS PMincho;
			font-size: 28px;
			padding-right: 150px;
		}

		#illust img{
			width: 80px;
			height: 80px;
			margin: 10px;
			object-fit: cover;
			display:flex;
			justify-contnt: space-between;
			border: 1px solid #000;
		}
 	</style>

</head>
<body>
	<div id="main">
		<div class="left">
			<h4>- illust -</h4>
			<div id="illust">
				<img src ="illust/Fairy tale - the little mermaid -.jpg" alt="Fairy tale - the little mermaid -">

			</div>

		</div>
		<div class="right">

		</div>
	</div>

<jsp:include page="footer.jsp" flush="true" />

</body>
</html>