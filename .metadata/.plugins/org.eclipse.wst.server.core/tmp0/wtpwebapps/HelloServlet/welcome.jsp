<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>welcome</title>
</head>
<body>

	名前とパスワードを入力してください
	<form method="post" action="WelcomeServlet">
		<input type="text" name="username">
		<input type="password" name="password">
		<input type="submit" value="送信">
	</form>
</body>
</html>