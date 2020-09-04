<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.MemberVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Shop Homepage - Start Bootstrap Template</title>

<!-- Bootstrap core CSS -->
<link href="<%=request.getContextPath()%>/resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="<%=request.getContextPath()%>/resource/css/shop-item.css" rel="stylesheet">
<style type="text/css">

.searchIDcomponent{
	padding: 2em;
    width: 400px;
    margin-left: 30%;
    padding-top: 100px;
    padding-bottom: 200px;
    height:600px;
}
.spantext{
	text-align: center;
}

body{
	font:Apple SD Gothic Neo;
}
.btns{
	width: 100%;
	margin-left:30%;
}
.btn_login,
.btn_findpwd{
	display: inline-block;
}
</style>

</head>
<body>
	<!-- Navigation -->
	<%@include file ="/views/common/header.jsp" %>
	<!-- Page Container -->
	<div class="container">
	 <div class="row">
	<div class = "searchIDcomponent">
		
		
			<fieldset>
				<legend style="text-align:center;">비밀번호 찾기</legend>
					<br>
				
				<div class="form-group1">
					<c:if test="${m.id ==null}">
								${m.id }
						<p class="spantext"> 잘못된 이메일 혹은 아이디 입니다.</p>
					</c:if>
					<c:if test="${m.id !=null}">
								${m.id }
						<p class="spantext">임시패스워드는  ' ${member.pwd } '입니다.</p>
					</c:if>
				</div>
					<br>
					
				<div class="btns">
					<div class="btn_login">
						<input type="button" class="btn btn-primary" value="로그인하러가기" 
						onclick="location.href='views/member/login.jsp'">
					</div>
				</div>
					
				
			</fieldset>
			
		
		</div>
	</div>
	</div>





	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2020</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>