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


</style>

</head>
<body>
	<!-- Navigation -->
	<%@include file ="/views/common/header.jsp" %>
	<!-- Page Container -->
	<div class="container">
	<c:if test="${not empty sessionScope.id }">
	
	
		<h1 class="my-4">My Page</h1>
		
		<div class="row">
			
			<!-- leftNavigation -->
			<jsp:include page = "/views/common/mypageCategory.jsp" />
			<!-- /leftNavigation -->

	    

			<div class = "membershowbox" style="height:500px;">
				<h4 class="main">${sessionScope.id } 고객님, 안녕하세요!</h4>
					포인트 : ${m.point} 점
				<%-- <div class="orderedlist">
						<%@include file ="/views/mypage/orderlist.jsp" %>
				</div> --%>

			</div>	
		</div>
	</c:if>
 	</div>


	<!-- Footer -->
		<%@include file ="/views/common/footer.jsp" %>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>