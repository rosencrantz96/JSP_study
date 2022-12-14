<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--id: calc라는 객체를 calc라는 이름으로 쓰겠다! class: 그 객체가 어디 클래스에 있는지 알려줌 --%>
<%-- Calculator calc = new Calculator(); 랑 거의 비슷한 거임... ㅠㅠ 싀발 어려워 --%>    
<jsp:useBean id="calc" class="ch07.Calculator"/>
<%-- calc.setN1(request.getParameter("n1")); --%>
<%-- calc.setN2(request.getParameter("n2")); --%>
<%-- calc.setOp(request.getParameter("op")); --%>
<jsp:setProperty name="calc" property="*" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	결과: <%=calc.calc() %>
</body>
</html>