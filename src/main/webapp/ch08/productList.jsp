<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>상품목록</h2>
	<hr>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>상품명</th>
			<th>가격</th>
		</tr>
		<!-- for(Product p : products) -->
		<c:forEach var="p" varStatus="i" items="${products}">
			<tr>
				<td>${i.count}</td>
				<%--쿼리스트링! 잘 복습하고 기억해두자...?action=키&info=데이터--%>
				<td><a href="/jsp_study/pcontrol?action=info&id=${p.id}">${p.name}</a></td>
				<td>${p.price}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>