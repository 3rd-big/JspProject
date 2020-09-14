<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.MemberVO, model.ProductVO, model.ProductOrderVO"%>
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

body{
	font:Apple SD Gothic Neo;
}
.membershowbox{
	margin-left: 50px;
	width:850px; 
	max-width:100%;
}
.pointbox{
	background-color: black; 
	padding:0.8em; 

}
#mypointmore{
	font-size: 14px;
	color: white; 
	text-decoration: none;
	cursor: pointer;
	float: right;
}
.pointbox h6,
.pointbox a{
	display: inline;
}

.pointbox h6{
 	color: white;
 	font:Apple SD Gothic Neo;
}
.hellouser img,
.hellouser h4{
	display: inline;
}


</style>

</head>
<body>
	<!-- Navigation -->
	<%-- <%@include file ="/views/common/header.jsp" %> --%>
	<%@include file ="/views/common/header2.jsp" %>
	<!-- Page Container -->
	<div class="container">
	<c:if test="${not empty sessionScope.id }">
	
	
		<h1 class="my-4">MY PAGE</h1>
		
		<div class="row">
			
			<!-- leftNavigation -->
			<jsp:include page = "/views/common/mypageCategory.jsp" />
			<!-- /leftNavigation -->


			<div class = "membershowbox">
				<div class="hellouser">
					<img src="sample_img/user_basic.png" alt="" width="75" height="75"> 
					<h4 style="font-size:1.5em; "> &nbsp; ${sessionScope.id } 고객님, 안녕하세요!</h4>
				</div>
					<br>

					<div class="pointbox" >
						<h6> POINTS : &nbsp; ${m.point} 점 </h6>
						 <a href="#" id="mypointmore" > more>> </a>		
					</div>
					<br> 
				<div class="orderedlist">
					<%@include file ="/views/mypage/recentOrderlist.jsp" %>
				</div> 

			</div>	
		</div>
	</c:if>
 	</div>

<%-- 
	<!-- Footer -->
		<%@include file ="/views/common/footer.jsp" %>
 --%>
		<!-- footer -->
	<%@include file="/views/common/footer2.jsp"%>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>