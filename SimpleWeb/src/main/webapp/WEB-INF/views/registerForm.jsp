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
		<%@ include file="/WEB-INF/views/frame/top.jsp"%>
	
</head>
<body class="my-login-page">
	<%@ include file="/WEB-INF/views/frame/sideMenuBar.jsp"%>

	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					<div class="brand">
						<img style="margin:15px 0px" src="resources/img/logo.png" alt="bootstrap 4 login page">
					</div>
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">Register</h4>
<!-- 							<form method="POST" class="my-login-validation" novalidate="">
 -->							<form:form commandName="regVO" action="regOk" method="post" >
								<div class="form-group">
									<label for="name">Name</label>
									
									<form:input path="name" class="form-control"/>
<!-- 									<input id="name" type="text" class="form-control" name="name" required autofocus> -->
									<div class="invalid-feedback">
										What's your name?
									</div>
								</div>

								<div class="form-group">
									<label for="email">E-Mail Address</label>
									<form:input path="email" class="form-control"/>
<!-- 									<input id="email" type="email" class="form-control" name="email" required> -->
									<div class="invalid-feedback">
										Your email is invalid
									</div>
								</div>

								<div class="form-group">
									<label for="password">Password</label>
									<form:password path="password" class="form-control"/>
<!-- 									<input id="password" type="password" class="form-control" name="password" required data-eye> -->
									<div class="invalid-feedback">
										Password is required
									</div>
								</div>

								<div class="form-group">
									<div class="custom-checkbox custom-control">
										<form type="checkbox" name="agree" id="agree" class="custom-control-input" required=""/>
<!-- 										<input type="checkbox" name="agree" id="agree" class="custom-control-input" required=""> -->
										<label for="agree" class="custom-control-label">I agree to the <a href="#">Terms and Conditions</a></label>
										<div class="invalid-feedback">
											You must agree with our Terms and Conditions
										</div>
									</div>
								</div>

								<div class="form-group m-0">
									<button type="submit" class="btn btn-primary btn-block">
										Register
									</button>
								</div>
								<div class="mt-4 text-center">
									Already have an account? <a href="loginForm">Login</a>
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
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script src="resources/js/my-login.js"></script>
		<%@ include file="/WEB-INF/views/frame/bottom.jsp"%>
	
</body>
</html>