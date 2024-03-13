<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>
div{
	border:1px solid black;
}

.wrap{
width:500px;
border: 1px solid black;
margin : 0 auto;
}

.line{
display :flex;
padding:5px;
border: 1px solid black;

}
.line .col1{
 	width:30%;
 	border: 1px solid black;
 	
}
.line .col2{
	width:70%
}
.line1, .line5{
text-align: center;
}

</style>
<body>

<form action="regAction.jsp" method="post">
<div class="wrap">

	<!--  -->
	<div class ="line1">
		<h2>수강신청</h2>
	</div>
	<!--  -->
	<div class="line">
		<div class="col1">아이디</div>
		<div class="col2"><input type="text" name="id"></div>
	</div>
	
	<div class="line">
		<div class="col1">비번</div>
		<div class="col2"><input type="text" name="pw"></div>
	</div>
	
	<div class="line">
		<div class="col1">이름</div>
		<div class="col2"><input type="text" name="name"></div>
	</div>
	
	<div class="line5">
	<!-- form 안에 있는 버튼은 submit 지정, (action에 지정된 페이지로 이동함) -->
		<button>등록</button>
		<button>취소</button>
		
	</div>

</div>

</form>
</body>
</html>