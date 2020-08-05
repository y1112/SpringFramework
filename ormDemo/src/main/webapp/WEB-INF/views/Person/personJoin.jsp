<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Spring에서 지원하는 tag library -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
개인 정보 입력<hr>
<form:form method="post">
<form:input path="name"/>

</form:form>
<hr width="400">
	<%-- <div align="center">
		<form:form action="join" method="post" commandName="personVO">
			<table border="1" cellpadding="2" cellspacing="0">
				<tr>
					<td>이름</td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td>나이</td>
					<td><form:input path="age" /></td>
				</tr>
				<tr>
					<td>주민번호</td>
					<td><form:input path="id" /></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><form:input path="address" /></td>
				</tr>
			</table>
		</form:form>
	</div> --%>
</body>
</html>