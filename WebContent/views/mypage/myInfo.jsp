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


</head>
<body>
	<!-- Navigation -->
	<%@include file ="/views/common/header.jsp" %>
	<!-- Page Container -->
	<!-- 카테고리 -->
	<c:if test="${not empty sessionScope.id }">
	
	
		<div class="row2" >
	
	      <div class="col-lg-3">
	        <h1 class="my-4">My Page</h1>
	        <div class="list-group">
	        	<a href="${pageContext.request.contextPath }/OrderlistController?o_state=1" class="list-group-item">주문조회</a>
	        	<a href="${pageContext.request.contextPath }/ListReviewController" class="list-group-item">내가 쓴 리뷰 관리</a>
	          <a href="${pageContext.request.contextPath }/SearchController" class="list-group-item ">내 정보 수정</a>
	          
	          
	        </div>
	      </div>
	    </div>
		
		<section class = "rightcontent">
			<h4 class="main">${sessionScope.id } 고객님, 안녕하세요!</h4>
			
			<div class="pointview">
				포인트 : ${m.point} 점
			</div>
			
			<div class="orderedlist">
					<%@include file ="/views/mypage/orderlist.jsp" %>
			</div>
			
			
		</section>
	

	</c:if>



	<!-- Footer -->
		<%@include file ="/views/common/footer.jsp" %>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>