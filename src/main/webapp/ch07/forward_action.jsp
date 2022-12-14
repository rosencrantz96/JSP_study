<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8"); %>

	<jsp:forward page="page_control_end.jsp">
		<jsp:param value="010-9908-0803" name="tel" />
	</jsp:forward>
</body>
</html>