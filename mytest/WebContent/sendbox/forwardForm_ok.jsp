<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forwardForm_ok.jsp</title>
</head>
<body>
	<h1>forwardForm_ok.jsp</h1>
	
	<%
	request.setCharacterEncoding("utf-8");
	%>
	
	<jsp:forward page="forwardTest.jsp">

		<jsp:param value="콩길덩가장최신" name="address"/>

		</jsp:forward>
	<!-- forward 액션태그를 이용하여 이동시키면 request를 공유함  -->
      

</body>
</html>