<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>

<!DOCTYPE html>
<html>

<jsp:include page="header.jsp" flush="true"/>


<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta http-equiv="Content-Syle-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />

 	<title>tumblr画面</title>

 	<style type="text/css">
 	 	/* ==========MAIN LAYOUT========== */
 	 	#main{
 	 		whidth: 100%;
 	 		text-align: center;
 	 		}

		.tumblr{
			width: 95%;
			height:470px;
			margin: 5px 0 5px;
		}
 	</style>

</head>
<body>
	<div id="main">
	 	<iframe class="tumblr" src="https://n-corva.tumblr.com/"></iframe>
	 </div>

<jsp:include page="footer.jsp" flush="true" />

</body>
</html>