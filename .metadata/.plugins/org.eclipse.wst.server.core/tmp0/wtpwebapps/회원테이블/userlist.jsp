<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@  page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
header{
border: 1px solid black;
padding : 20px;
}
nav{
border:1px solid black;
padding: 10px;
}

a{
	text-decoration:none;
	color:black;
}
nav span{
	padding-right: 5px;
}
section{
	 height: 500px; 
	padding:10px;
}

footer{
	border: 1px solid black;
	display : flex;
	padding : 10px;
}
footer > div:nth-child(1){
	width 20%;
}
table{
	width:400px;
	border:1px solid black;
	margin: 0 auto;
}
td{
	border: 1px solid black;
	text-align: center;
}
</style>
</head>
<body>
<header>
	<h2>헬스장 정보관리 프로그램</h2>
</header>

<nav>
	<span><a href=list.jsp">회원조회</a></span>
	<span><a href=list.jsp">회원등록</a></span>
	<span><a href=list.jsp">트레이너조회</a></span>
	<span><a href=list.jsp">트레이너등록</a></span>
</nav>

<section>
	<h2>회원 조회</h2>
	<table>
		<tr>
			<td>아이디</td>
			<td>이름</td>
			<td>성별</td>
			<td>전화번호</td>
			<td>나이</td>
		</tr>
		
		
	<% 
	String driver = "oracle.jdbc.driver.OracleDriver" ;
		String url="jdbc:oracle:thin:@localhost:1521:testdb";
		String user="scott";
		String password="tiger";
		
		
		try {
			//1. 드라이버 로드 (객체생성)
			Class.forName(driver);
		
			//2. 데이터베이스 연결			
			Connection con = DriverManager.getConnection(url, user, password);
			
			//3.문장얻어오기
			
			String sql= "select * from 	mTbl";
			PreparedStatement pst=con.prepareStatement(sql);
			//왼쪽 물음표붙 
			
			//5. 실행 executeQuery()-조회 , executeUpdate()-나머지 등록,변경,삭제)
			
			ResultSet rs=pst.executeQuery();

			while(rs.next()) { 
			%>
			<tr>
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(5)%></td>
			</tr>
			<% }
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}%>
		
	</table>
</section>
<footer>
	<div>득근컴퍼니</div>
	<div>회사소개 </div>
	<div>기업 사이트</div>
</footer>
</body>
</html>