<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>JSTL 종합예제</h2>
	<hr>
	<h3>set, out</h3>
	<%--set: 값을 넣어줌! var은 변수명, value가 값 (태그를 저장할 수도 있고 단순한 문자열을 저장할 수도 있다. c:set은 페이지 스코프에 저장된다!(페이지 안에서만 사용 가능) --%>
	<!-- pageScope영역에 저장된다. -->
	<c:set var="product1" value="<b>애플 아이폰</b>" />
	<c:set var="product2" value="삼성 갤럭시 노트" />
	<%--배열을 저장할 때는 ${} 안에 넣어준다! 이엘형식...?이라는 것 같음. 특이사항: 에러가 남. 이클립스 자체 버그라 걍 무시해도 됨.--%>
	<c:set var="intArray" value="${[1,2,3,4,5]}" />
	<%--출력은 c:out을 통해서! value에다가 변수명을 써준다? / default: 출력하고자 하는값이 없을 때 / escapeXml: true일 경우에는 태그를 일반 문자열로 출력, false일 때는 태그로? --%>
	<p>
		product1(jstl):
		<c:out value="${product1}" default="Not registered" escapeXml="true"></c:out>
		<%--태그가 아니라 문자열로 나온다 --%>
	</p>
	<%--꼭 c:out으로 출력할 필요는 없다. --%>
	<p>product1(el): ${product1}</p>
	<%--태그가 적용된다--%>
	<p>intArray[2]: ${intArray[2]}</p>
	<hr>
	<h3>foreach배열 출력</h3>
	<ul>
		<!-- for(int num : intArray) -->
		<c:forEach var="num" varStatus="i" items="${intArray}">
			<li>${i.index} : ${num}</li>
		</c:forEach>
	</ul>
	<hr>
	<h3>if</h3>
	<c:set var="checkout" value="true" />
	<!-- if (test == checkout) -->
	<c:if test="${checkout}">
		<p>주문 제품: ${product2}</p>
	</c:if>
	<!-- if (test != checkout) -->
	<c:if test="${!checkout}">
		<p>주문 제품 아님</p>
	</c:if>
	<%-- empty: 값이 비었는지 아닌지 확인함 --%>
	<!-- product2에 값이 들어가있는지 아닌지 체크한다. -->
	<c:if test="${!empty product2}">
		<b>${product2}이미 있음!</b>
	</c:if>
	<hr>
	<h3>choose, when, otherwise</h3>
	<%--test: 비교해주기 위한 키워드! (true라면!)--%>
	<c:choose>
		<%--switch문이랑 똑같이 쓸 수 있다. when 여러개 써서. --%>
		<c:when test="${checkout}">
			<p>주문 제품: ${product2}</p>
		</c:when>
		<%--if else처럼 쓸 수 있다.--%>
		<c:otherwise>
			<p>주문 제품 아님</p>
		</c:otherwise>
	</c:choose>
	<hr>
	<h3>forTokens</h3>
	<%--item에는 데이터를 써주면 된다 / delims: 나눌 기준이 되는 문자열을 써주면 된다 ('구분하다')--%>
	<c:forTokens var="city" items="Seoul|Tokyo|New York|Toronto" delims="|" varStatus="i"> 
		<%--인덱스가 첫번째라면 true를 준다...? 먼소리임  --%>
		<!-- if (i.first == true) -->
		<c:if test="${i.first}"> 도시목록: </c:if>	
		${city}
		<%--인덱스가 마지막이 아니면 true를 반환한다. --%>
		<!-- if (i.last != true)  -->
		<c:if test="${!i.last}">, </c:if>
	</c:forTokens>
</body>
</html>