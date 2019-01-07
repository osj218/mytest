<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>includeTest.jsp</title>
</head>
<%
	request.setCharacterEncoding("utf-8");
%>
<body>
<h1>Include 액션 태그 이용</h1>
<jsp:include page="aaa.jsp"></jsp:include>

<h1>param 태그 이용</h1>
<jsp:include page="aaa.jsp">
	<jsp:param value="논현동"	name="addr"/>
</jsp:include>

</body>
</html>