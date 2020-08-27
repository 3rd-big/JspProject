<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link href="<%=request.getContextPath()%>/resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="<%=request.getContextPath()%>/resource/css/shop-item.css" rel="stylesheet">
</head>
<body>
	<!-- test footer -->
		<footer class="py-5 bg-dark">
		
		<div class="container">
		
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2020</p>
			<br>
			<ul class="navbar-nav mr-auto">
			
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/ReadNoticeController">공지사항</a></li>
			</ul>
			
		</div>

	</footer>

</body>
</html>