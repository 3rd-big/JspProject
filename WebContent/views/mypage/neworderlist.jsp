<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.ProductVO" %>
  <%@page import="model.ProductOrderVO" %>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<%=request.getContextPath()%>/resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="<%=request.getContextPath()%>/resource/css/shop-item.css" rel="stylesheet">

<style type="text/css">
.btn btn-link{
	position: absolute;
    top: 50%;
    left: 50%;
    width: 680px;
    min-height: 666px;
    padding: 0 20px 88px;
}
.allorderlistbox{
	margin-left: 50px;
	width:850px; 
	max-width:100%;
}
table{
	table-layout:fixed;
}

#product_name{
	word-break:break-all;
}
</style>

</head>
<body>
	<!-- Navigation -->
	<%@include file ="/views/common/header.jsp" %>
	
	<div class="container">
		<h1 class="my-4">My Page</h1>
		 <div class="row">
			
			<!-- leftNavigation -->
			<jsp:include page = "/views/common/mypageCategory.jsp" />
			<!-- /leftNavigation -->
			<div class="allorderlistbox">
				
				<h3>주문배송조회</h3>

				<form id="allorderList" name="allorderList" method="post">
					<table class="table table-hover table-sm mt-3 mb-5" >
					<thead class="thead-light1" style="background-color: white;" >
						<tr class="text-center">
							<th scope="col">주문코드</th> 
							<th scope="col">주문일</th>
							<th scope="col">주문상품</th>  
							<th scope="col">총 결제금액</th> 
							<th scope="col">배송상태</th> 
							
						</tr>
					</thead>
					<tbody >
						<c:forEach var="o" items="${list }">
							<tr class="text-center">
								<td name="code_num">${o.code_num } </td>
								<td>${o.o_date }</td>
								<td id="product_name" name="order_product_name"> ${o.prod_name } </td>
								<td>${o.total_price } </td>
								<td> 배송상태? </td>
							</tr>																
						</c:forEach>
					</tbody>
					</table>
				</form>
			</div>
		</div>
		</div>
</body>
</html>