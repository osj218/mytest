<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>iframeTest.jsp</title>
</head>
<body>
	<h1>iframe연습</h1>
	<a href="http://nate.com" target="testFrame">네이트로 갑시다</a><br> 
	<a href="requestInfo.jsp" target="testFrame">requestInfo로 갑시다</a><br> 
	<a href="http://naver.com" target="_blank">네이버로 갑시다</a><br> 
	<a href="aaa.jsp">aaa로 갑시다</a><br>
	<br>
	<iframe src="dbcpTest.jsp" width="500" height="250" name="testFrame"></iframe>


</body>
</html>