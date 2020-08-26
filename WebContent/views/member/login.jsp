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

</head>
<body>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="#">Start Bootstrap</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="#">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">About</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Services</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Contact</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Page Container -->
	<div class = "logincomponent">
		<form action="${pageContext.request.contextPath }/LoginController" name="f" method="post">
			<fieldset>
				<legend>로그인</legend>
				
				<div class="form-group">
					<label for="InputID">ID</label> 
					<input type="text" class="form-control" id="id" name="id">
				</div>
				
				<div class="form-group">
					<label for="InputPwd">Password</label> <input
						type="password" class="form-control" id="pwd" name="pwd"
						placeholder="Password">
				</div>

				<button type="submit" class="btn btn-primary">로그인</button>
				
				<div class="searchUser">
					<a href="${pageContext.request.contextPath }/signup.jsp">회원가입/</a>
					<a href="${pageContext.request.contextPath }/searchId.jsp">아이디 찾기/</a>
					<a href="${pageContext.request.contextPath }/searchPwd.jsp">비밀번호 찾기</a>
				</div>
			</fieldset>
			
		</form>
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