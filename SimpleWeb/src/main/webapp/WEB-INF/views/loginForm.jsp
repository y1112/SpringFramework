<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="resources/css/my-login.css">

<!-- 
<style>
.btn{

}

/* tr{
 margin:10px;
} */
/* tr.space {
  border-bottom: 10px solid #fff;
} */
form{
	padding:2% 10%;
}
table {
  border-collapse: separate;
  border-spacing: 0 10px;
}

</style> -->
	<%@ include file="/WEB-INF/views/frame/top.jsp"%>
</head>
<body>
	<%@ include file="/WEB-INF/views/frame/sideMenuBar.jsp"%>

<body class="my-login-page">
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					<div class="brand">
						<img style="margin:15px 0px" src="resources/img/logo.png" alt="logo">
					</div>
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">Login</h4>
							<!-- 구글 로그인 API -->
							<hr width="300" color="blue">
							<meta name = "google-signin-client_id" content = "571655736537-cim9a9dn411ivd0r9llmpp7ag6fj46t7.apps.googleusercontent.com">
							<script src="https://apis.google.com/js/platform.js" async defer></script>
							<div align="center" class="g-signin2" data-onsuccess="onSignIn"></div>
							<script>
							function onSignIn(googleUser) {
								  var profile = googleUser.getBasicProfile();
								  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
								  console.log('Name: ' + profile.getName());
								  console.log('Image URL: ' + profile.getImageUrl());
								  console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
							
							}

							</script>
							<hr width="300" color="blue">
							<!-- 구글 로그인 API -->
							<!-- 구글 로그아웃 API -->
							<hr width="300" color="blue">
							<a href="#" onclick="signOut();">Sign out</a>
						<script>
						  function signOut() {
						    var auth2 = gapi.auth2.getAuthInstance();
						    auth2.signOut().then(function () {
						      console.log('User signed out.');
						    });
						  }
						</script>							
							<hr width="300" color="blue">
							<!-- 구글 로그아웃 API -->
							
							<form:form commandName="regVO" action="loginOk" method="POST" class="my-login-validation" novalidate="">
								<div class="form-group">
									<label for="email">E-Mail Address</label>
									<form:input path="email" class="form-control"/>
<%-- 									<form:input path="email" id="email" class="form-control" name="email" value="" required autofocus/> --%>
									<div class="invalid-feedback">
										Email is invalid
									</div>
								</div>

								<div class="form-group">
									<label for="password">Password
										<a href="forgot" class="float-right">
											Forgot Password?
										</a>
									</label>
									<form:password path="password" id="password" class="form-control" name="password"/>
<%-- 									<form:password path="password" id="password" class="form-control" name="password" required data-eye/> --%>
								    <div class="invalid-feedback">
								    	Password is required
							    	</div>
								</div>

								<div class="form-group">
									<div class="custom-checkbox custom-control">
										<input type="checkbox" name="remember" id="remember" class="custom-control-input"/>
<%-- 										<form:checkbox path="remember" name="remember" id="remember" class="custom-control-input"/> --%>
										<label for="remember" class="custom-control-label">Remember Me</label>
									</div>
								</div>

								<div class="form-group m-0">
									<button type="submit" class="btn btn-primary btn-block">
										Login
									</button>
								</div>
								<div class="mt-4 text-center">
									Don't have an account? <a href="registerForm">Create One</a>
								</div>
							</form:form>
						</div>
					</div>
					<div class="footer">
						Copyright &copy; 2017 &mdash; Your Company 
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script src="resources/js/my-login.js"></script>
</body>
</html>


	<%-- <form method="post" action="loginOk"> 
	<table>
	<tr>
	<td><label for="uid">아이디</label></td>
	<td><input type="text" name="uid" id="uid" placeholder="아이디" required></td>
	</tr>
	<tr>
	<td><label for="upw">비밀번호</label></td>
	<td><input type="password" name="upw" id="upw" placeholder="비밀번호" required></td>
	</tr>
	<tr>
	<td></td>
	<td><input class="btn btn-outline-primary" type="submit" value="로그인"><input class="btn btn-outline-primary" type="reset" value="초기화"></td>
	</tr>
	
	</table>
	</form>
			<%@ include file="/WEB-INF/views/frame/bottom.jsp"%>
		
		
</body>
</html> --%>

	