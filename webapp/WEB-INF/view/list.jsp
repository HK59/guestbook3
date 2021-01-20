<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix ="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>전화번호 리스트</h1>

	<p>
		입력한 전화번호 내역입니다.
	</p>

	<c:forEach items= ${requestScope.gList}, var ="guestVo">
		<table border="1">
			<tr>
				<td>이름(name)</td>
				<td>${guestVo.name}</td>
				
			</tr>
			<tr>
				<td>핸드폰(hp)</td>
				<td>${guestVo.hp}</td>
			</tr>
			<tr>
				<td>회사(company)</td>
				<td>${guestVo.company}</td>
			</tr>
			
			<tr>
			<td><a href ="/guestbook3/guest/passerror?id=${guestVo.guestId}">[에러]</a></td>
			<td><a href ="/guestbook3/guest/delete?personId=${guestVo.guestId}">[삭제]</a></td>
			
			</tr>
		</table>
		<br>
	</c:forEach>
	
	
	<a href="">추가번호 등록</a>

</body>
</html>