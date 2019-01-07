<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.herbmall.db.ConnectionPoolMgr1"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>connectionPoolTest.jsp</title>
</head>
<body>
	<h1>ConnectionPool 연습</h1>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>등록일</th>
		</tr>
	<%
		//2. db작업 - select
		ConnectionPoolMgr1 pool = ConnectionPoolMgr1.getInstance(); // 이 말을 해석해야 한다
		//ConncetionPoolMgr1 형태의 pool 이라는 객체를 생성 = 매니저 1에서 getinstance 메서드를 돌린 값을 가져오는거다
	
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try{
		//[1][2] con(드라이버 로딩)
		con = pool.getConnection(); // ConnectionPool 에서 Connection 빌려오기
		
		//[3] ps
		String sql = "select * from board where no<10 order by no desc";
		ps=con.prepareStatement(sql);
		
		//[4] exec
		rs=ps.executeQuery();
		while(rs.next()){
			int no = rs.getInt("no");
			String title = rs.getString("title");
			Timestamp regdate = rs.getTimestamp("regdate"); %>
			
			<tr>
				<td><%=no %></td>
				<td><%=title %></td>
				<td><%=regdate %></td>				
			</tr>
			
		<%}
		
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			pool.dbClose(rs, ps, con);
		}
		
		//3. 출력
	%>
	</table>

</body>
</html>