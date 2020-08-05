<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 리스트</title>
</head>
<body>
	<div align="center">
		<h3>게시판 리스트</h3>
		<hr width="500">
		<table width="600" cellpadding="0" cellspacing="0" border="1">
			<tr>
				<colgroup bgcolor="#ddffaa">
					<col width="10%">
					<col width="70%">
					<col width="20%">
				</colgroup>
				<td align="center">번호</td>
				<td align="center">제목</td>
				<td align="center">작성자</td>
			</tr>
			
			<c:forEach items="${list}" var="vo">
			<tr>
				<td>${vo.bId}</td>
				<td>${vo.bName}</td>
				<td>${vo.bContent}</td>
			</tr>
			</c:forEach>
		</table>

		<a href="writeForm">글쓰기</a>
	</div>

</body>
</html>