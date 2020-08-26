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
	<!-- <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
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
	</nav> -->
	
	<%@include file ="/views/common/header.jsp" %>
	<!-- Page Container -->
	<div class = "enrollcomponent">
		<form action="${pageContext.request.contextPath }/JoinController" name="f" method="post">
			<fieldset>
				<legend>회원가입</legend>
				
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
				
				<!-- <div class="form-group">
					<label for="exampleSelect1">Example select</label> <select
						class="form-control" id="exampleSelect1">
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
					</select>
				</div>
				<div class="form-group">
					<label for="exampleSelect2">Example multiple select</label> <select
						multiple="" class="form-control" id="exampleSelect2">
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
					</select>
				</div>
				<div class="form-group">
					<label for="exampleTextarea">Example textarea</label>
					<textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
				</div>
				<div class="form-group">
					<label for="exampleInputFile">File input</label> <input type="file"
						class="form-control-file" id="exampleInputFile"
						aria-describedby="fileHelp"> <small id="fileHelp"
						class="form-text text-muted">This is some placeholder
						block-level help text for the above input. It's a bit lighter and
						easily wraps to a new line.</small>
				</div>
				<fieldset class="form-group">
					<legend>Radio buttons</legend>
					<div class="form-check">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" name="optionsRadios" id="optionsRadios1"
							value="option1" checked=""> Option one is this and
							that—be sure to include why it's great
						</label>
					</div>
					<div class="form-check">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" name="optionsRadios" id="optionsRadios2"
							value="option2"> Option two can be something else and
							selecting it will deselect option one
						</label>
					</div>
					<div class="form-check disabled">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" name="optionsRadios" id="optionsRadios3"
							value="option3" disabled=""> Option three is disabled
						</label>
					</div>
				</fieldset>
				<fieldset class="form-group">
					<legend>Checkboxes</legend>
					<div class="form-check">
						<label class="form-check-label"> <input
							class="form-check-input" type="checkbox" value="" checked="">
							Option one is this and that—be sure to include why it's great
						</label>
					</div>
					<div class="form-check disabled">
						<label class="form-check-label"> <input
							class="form-check-input" type="checkbox" value="" disabled="">
							Option two is disabled
						</label>
					</div>
				</fieldset>
				<fieldset class="form-group">
					<legend>Sliders</legend>
					<label for="customRange1">Example range</label> <input type="range"
						class="custom-range" id="customRange1">
				</fieldset> -->
				<button type="submit" class="btn btn-primary">가입하기</button>
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