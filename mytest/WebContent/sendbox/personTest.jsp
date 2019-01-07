<%@page import="com.herbmall.test.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<<<<<<< HEAD
	<h1>싱글톤 패턴 연습최신</h1>

		<%
			//Person p = new Person();  불가함 // private은 안됨
			Person p = Person.getInstance();
			p.showInf();
		%>

</body>
</html>