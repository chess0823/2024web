<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@  page import="java.sql.*" %>
<% 
//request �Ѿ�� ���� �ѱ��� ���
//
	request.setCharacterEncoding("utf-8");


	String id = request.getParameter("id");
	String name =request.getParameter("name");
	String pw = request.getParameter("pw");
	
	
	out.print(id);
	out.print(name);
	out.print(pw);
	
	
	Connection con=null;
	Statement st = null;
	ResultSet rs = null;
	try{ 
		//�����ͺ��̽� ��������
		String driver = "oracle.jdbc.driver.OracleDriver" ;
		String url="jdbc:oracle:thin:@localhost:1521:testdb";
		String user="scott";
		String password="tiger";
		
		 //1. ����Ŭ����̹� �ε�
		Class.forName(driver); 
		 //2. �����ͺ��̽� ����
		con= DriverManager.getConnection(url, user, password);
		 
		 if(con == null) {System.out.println("�������");}
		 
		 //3. statement ������
		st = con.createStatement();
		 //4. �ʿ��� sql �ۼ�
		String sql ="select * from acorntbl"; //5. ���������� ����
		rs = st.executeQuery( sql) ;
		 //6. ������ ���� ����� ȭ�鿡 ����ϱ�
		while( rs.next() ) {
			out.print(rs.getString(1)); // out�� �������� ����� �ǹ���
			out.print(rs.getString(2));
			out.print(rs.getString(3) +"<br>"); 
		}
	}catch(Exception e){
		e.printStackTrace();
	}
	finally{ //�ڿ��� �ݳ�
		if( rs!= null) rs.close();
		if( st != null) st.close();
		if( con != null) con.close();
	}
	
		
 
 
%>