<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  page import="java.sql.*" %>	
 
    


<%


request.setCharacterEncoding("utf-8");
String tId =request.getParameter("tId");
String tName = request.getParameter("tName");
String tGender = request.getParameter("tGender");
String tAge = request.getParameter("tAge");
String tTel = request.getParameter("tTel");

out.print(tId);
out.print(tName);
out.print(tGender); 	
out.print(tAge); 	
out.print(tTel);


String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:testdb";
String user = "scott";
String password = "tiger";	

		
try {
	 
	Class.forName(driver);		 
	Connection  con = DriverManager.getConnection(url, user, password);	
	 
	 
	String sql  =" update trainerTbl  set  tName=?,tAge=?,tTel=?  where tId= ?";
	PreparedStatement  pst =con.prepareStatement(sql); 	
	pst.setString(1, tName);
	pst.setString(2, tAge);
	pst.setString(3, tTel);
	pst.setString(4, tId);
	

	
    int cnt  =pst.executeUpdate();  // 등록, 변경, 삭제	
    System.out.println( cnt +"개수 변경 되었음");
	 		
	
} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}


response.sendRedirect("trainer.jsp");
%>

    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  변경완료 !!
</body>
</html>