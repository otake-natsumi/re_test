<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta http-equiv="Content-Syle-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<script src="//code.jquery.com/jquery-2.2.0.min.js"></script>


 	<style type="text/css">

  		body{
	 		margin: 0 auto;
	 		padding: 0;
	 		overflow: scroll;
 		}

 	/* ==========HEADER-TOP LAYOUT========== */
		#header-top{
			position: relative;
			width: 100%;
			height: 120px;
 			overflow: hidden;
			text-align: center;
			background: black;
		}

 		#header-top .top-pict{
  			position: relative;
 			max-height: 120px;
	 		object-fit: cover;
 		}

  		#header-top h1{
    		position: absolute;
  			top: 10px;
 			left: 50%;
  			width: 700px;
  			margin-left:-350px;/*widthの半分を-で*/
  			font-family: MS PMincho;
 			font-size: 40px;
  			color: white;
 	 		text-shadow: 0px 0px 10px #330000, 0px 0px 60px #003300;
  		}

	/* ==========HEADER-UNDER LAYOUT========== */
		#header-under{
			width: 100%;
			height: 100px;
			text-align: center;
			background: black;
			display: inline-block;
		}

		#header-under ul{
			margin: 0;
 			font-size: 30px;
  			color: white;
   			list-style: none;

   		}

 		.link-left li{
 			float: left;
   			height: 90px;
  			line-height: 90px;
  			padding-left: 120px;
			letter-spacing: 10px;
			margin-right: 35px;
		}

   		.link_right li{
 			float: right;
   			height: 90px;
  			line-height: 90px;
  			padding-right: 120px;
 			letter-spacing: 10px;
  		}

		#header-under .logo-pict{
			clear: both;
 			max-height: 80px;
  			object-fit: cover;
 			margin: 10px 0px 2px;
 		}
</style>

</head>
<body>
	<div id="header-top">
				<img src ="image/topillust.jpg" alt="トップイラスト" class="top-pict">
				<h1>N.corva</h1>
	</div>

	<div id="header-under">
		<div class="link-left">
			<ul>
				<li><a href="home.jsp" style="text-decoration:none;"><font color=white>top</font></a></li>
				<li><a href="illust.jsp" style="text-decoration:none;"><font color=white>illust</font></a></li>
			</ul>
		</div>
		<div class="link_right">
			<ul>
				<li><a href="contact.jsp" style="text-decoration:none;"><font color=white>contact</font></a></li>
				<li><a href="tumblr.jsp" style="text-decoration:none;"><font color=white>tumblr</font></a></li>
			</ul>
		</div>
		<span><img src ="image/logo.jpg" alt="ロゴ" class="logo-pict"></span>
	</div>

</body>
</html>