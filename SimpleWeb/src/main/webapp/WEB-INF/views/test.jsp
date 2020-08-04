<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<input type="button" id="loginBtn" value="login">
	<a href="userInfo">userInfo</a>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script>
		$("#loginBtn")
				.click(
						function() {
							location.href = "https://accounts.google.com/o/oauth2/auth?client_id="
									+ "571655736537-cim9a9dn411ivd0r9llmpp7ag6fj46t7.apps.googleusercontent.com"
									+ "&redirect_uri="
									+ "http://localhost:8080/bbsCommand/redirect"
/* 									+ "http://localhost:8080/redirect" */
/*  									+ "http://localhost:8080/bbsCommand/redirect" */ 
/* 									+ "http://localhost/redirect.html" */
									+ "&response_type=code&scope=https://www.googleapis.com/auth/userinfo.email&approval_prompt=force&access_type=offline";
						});
	</script>
</body>
</html>

