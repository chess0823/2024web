<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  page import="java.sql.*" %>	
	
<%

 String tId  = request.getParameter("tId");
 out.println( tId);
 String driver = "oracle.jdbc.driver.OracleDriver";
 String url = "jdbc:oracle:thin:@localhost:1521:testdb";
 String user = "scott";
 String password = "tiger";	
 
 
 String  tName ="";
 String  tGender ="";
 String  tAge ="";
 String  tTel="";
 
	
			
	try {
		//1. 드라이버 로드 (객체생성)
		Class.forName(driver);			
		//2. 데이터베이스 연결
		Connection  con = DriverManager.getConnection(url, user, password);
		
		//3. 문장얻어오기 
	 
		String sql  ="select * from  trainerTbl where tId  =?";
		PreparedStatement  pst =con.prepareStatement(sql);
		pst.setString(1, tId);	 //왼쪽 물음표부터 	 
		
		//5.실행 ( executeQuery()-조회,  executeUpdate()- 나머지 등록, 변경, 삭제)
		ResultSet  rs =pst.executeQuery();	
		
		//
		if( rs.next()) {	
			 
			tName  = rs.getString(2);
			tGender = rs.getString(3);	
			tAge = rs.getString(4);
			tTel= rs.getString(5);
		} 			
		
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}


  out.println( tName);
  out.println(tGender);
  out.println( tAge);
  out.println(tTel);
 

%>	
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
 div{ 
  border:1px solid black;
 }
 
 .wrap{
 width:500px;
 margin:0  auto;
 }
 
 .line{
   display: flex;
 }
 
 .col1{
  width:30%;
 }
 
 .col2{
  width:70%;
 }
 
 
 .line1, .line5{
 text-align: center;
 }
 
 
 .col1, .col2{
 padding:5px;
 }
  
</style>
</head>
<body>

<form  name="frm" action="updateAction.jsp"  method="post">
	<div  class="wrap">
		 <div class="line1">
			   <h2> 트레이너정보 변경 </h2>
		</div>
	
		<div class="line">
			<div class="col1">아이디</div>
			<div class="col2"><input type="text"  name="tId"></div>	
		</div>
		
	
		<div class="line">
			<div class="col1">트레이너이름</div>
			<div class="col2"><input type="text" name="tName"></div>	
		</div>
		
	    <div class="line">
			<div class="col1">성별</div>
			<div class="col2"><input type="text" name="tGender"></div>	
		</div>	
		    <div class="line">
			<div class="col1">나이</div>
			<div class="col2"><input type="text" name="tAge"></div>	
		</div>	
		    <div class="line">
			<div class="col1">전화번호</div>
			<div class="col2"><input type="text" name="tTel"></div>	
		</div>	
		<div class="line5">
		<!--  form 안에 있는 버튼은 submit 지정,(action에 지정된 페이지로 이동함) -->	
		 <button>변경</button>		 
		</div>
	</div>
</form>

</body>
</html>




<script>

	 let frm = document.frm;
	 alert( frm);
	 
	 frm.tId.value="<%=tId%>";
	 frm.tName.value="<%=tName%>";
	 frm.tGender.value="<%=tGender%>";	 
	 frm.tAge.value="<%=tAge%>";
	 frm.tTel.value="<%=tTel%>";	
	 
</script>