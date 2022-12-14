<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	int pw = Integer.parseInt(request.getParameter("pw"));
	
	String lg = null;
	
	if (id.equals("person") && pw == 1234) {
		lg = "peson 님 반갑습니다.";
	} else {
		lg = "로그인 실패.";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=lg %>
</body>
</html>