<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.ProductVO" %>
  <%@page import="model.ProductOrderVO" %>
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
	        	<a href="${pageContext.request.contextPath }/OrderlistController?o_state=0" class="list-group-item">주문조회</a>
	        	<a href="#" class="list-group-item">내가 쓴 리뷰 관리</a>
	          <a href="${pageContext.request.contextPath }/SearchController" class="list-group-item ">내 정보 수정</a>
	          
	          
	        </div>
	      </div>
	    </div>
		
		<section class = "rightcontent">

			<div class="cartlist">
			
				<c:if test="${o_state==0 }">
					<h3>장바구니 목록</h3>
				</c:if>


				<table class="table table-hover table-sm mt-3 mb-5" border="1">
					<thead class="thead-light" style="background-color: white;">
						<tr class="text-center">
							<th scope="col">장바구니번호</th>
							<th scope="col">제품명</th>
							<th scope="col">사진</th>
							<th scope="col">사이즈</th>
							<th scope="col">수량</th>
							<th scope="col">결제금액</th>
							<th scope="col">주문일?</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="o" items="${list }">
							<tr class="text-center">
								<td>${o.num }</td>
								<td>${o.prod_name }</td>
								<td><img src="${o.prod_img }" width="200" height="200"></td>
								<td>${o.p_size } </td>
								<td>${o.o_quantity}</td>
								<td>${o.total_price }</td>
								<td>${o.o_date }</td>

							</tr>
						</c:forEach>
					</tbody>
				</table>



			</div>
			
			
			
		</section>
	

	</c:if>



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