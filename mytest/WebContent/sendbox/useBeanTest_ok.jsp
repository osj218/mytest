<%@page import="com.herbmall.test.SimpleVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   //기존방식
   request.setCharacterEncoding("utf-8");
 /*   String userid = request.getParameter("userid");
   String name = request.getParameter("name");
   String no = request.getParameter("no");
   
   simpleVO vo = new simpleVO();
   vo.setUserid(userid);
   vo.setName(name);
   vo.setNo(Integer.parseInt(no)); */
%>
<jsp:useBean id="simpleVO" class="com.herbmall.test.SimpleVO" 
scope="page"></jsp:useBean>
<jsp:setProperty property="userid" name="simpleVO"/>
<jsp:setProperty property="name" name="simpleVO"/>
<jsp:setProperty property="no" name="simpleVO"/>	 
<jsp:setProperty property="*" name="simpleVO"/>333
<h1>usebean 이용 -파라미터</h1>
<%-- <p>userid : <%=vo.getUserid() %></p>
<p>no : <%=vo.getNo() %></p>
<p>name : <%=vo.getName() %></p> --%>

<p><jsp:getProperty property="userid" name="simpleVO"/></p>
<p><jsp:getProperty property="name" name="simpleVO"/></p>
<p><jsp:getProperty property="no" name="simpleVO"/></p>

</body>
</html>