<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
.enrollcomponent{
	padding: 2em;
    width: 500px;
    margin-left: 30%;
    padding-top: 50px;
    padding-bottom: 150px;
}


body{
	font:Apple SD Gothic Neo;
}
.btn{
	width: 100%;
}

.btn_signup{
	display: inline-block;
}

</style>
<script type="text/javascript">
function hello(){
	
	alert("회원가입을 축하합니다! 가입 축하 적립금 2000원을 드립니다");
	
}

</script>

</head>
<body>
	<!-- Navigation -->
	<%@include file ="/views/common/header.jsp" %>
	<!-- Page Container -->
	<div class="container">
	<div class = "enrollcomponent">
		
		<form action="${pageContext.request.contextPath }/JoinController" name="f" method="post">
			<fieldset>
				<legend style="text-align:center;">SIGN UP</legend>
				
				<div class="form-group">
					<label for="InputID">ID</label> 
					<input type="text" class="form-control" id="id" name="id">
				</div>
				
				<div class="form-group">
					<label for="InputPwd">Password</label> <input
						type="password" class="form-control" id="pwd" name="pwd"
						placeholder="Password">
				</div>
				
				<div class="form-group">
					<label for="InputName">Name</label> <input
						type="text" class="form-control" id="name" name="name">
				</div>
				
				<div class="form-group">
					<label for="InputEmail">Email address</label> <input
						type="email" class="form-control" id="email" name="email"
						aria-describedby="emailHelp" placeholder="Enter email"> <small
						id="emailHelp" class="form-text text-muted">We'll never
						share your email with anyone else.</small>
				</div>
				<!-- 주소api 추후 추가 -->
				<div class="form-group">
					<label for="InputAddress">Address</label> <input
						type="text" class="form-control" id="addr" name="addr">
				</div>
				<div class="btn">
					<div class="btn_signup">
						<button type="submit" class="btn btn-primary" onclick="hello();">SignUp</button>
					</div>
				</div>
			</fieldset>
		</form>
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