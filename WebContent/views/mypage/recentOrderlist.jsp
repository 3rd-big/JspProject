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
#orderlistmore{
	font-size: 14px;
	color: black; 
	text-decoration: none;
	cursor: pointer;
	float: right;
}
#code_num_link{
	color: black; 
	text-decoration: none;
	cursor: pointer;
}
.listtitle h4,
.listtitle a{
	display: inline;
}
.listtitle{
	padding: 0.8em;
}
</style>

</head>
<body>
	<!-- Navigation -->
	
	
			<div class="recentorderlistbox">
				<div class="listtitle">
					<h4>최근 주문 목록</h4>
				<!-- <hr style="border: 0; height: 3px; background: #ccc;"> -->
					<a href="${pageContext.request.contextPath }/AllOrderListController?o_state=1&page=1" id="orderlistmore" style="text-align: right;"> more >> </a>		
				</div>
				<form id="recentorderList" name="recentorderList" method="post">
					<table class="table table-hover table-sm mt-3 mb-5" >
					<thead class="thead-light1" style="background-color: white;" >
						<tr class="text-center">
							<th scope="col">주문코드</th> 
							<th scope="col">주문일</th>
							<th scope="col">상품명</th>
							<th scope="col">상품 이미지</th>
							<th scope="col">총 결제금액</th> 
							<th scope="col">배송상태</th> 

						</tr>
					</thead>
					<tbody >
						<c:forEach var="o" items="${list }">
							<tr class="text-center">
								<td name="code_num">
								 <a id="code_num_link" style="text-decoration: none;" href="${pageContext.request.contextPath }/OrderlistController2?code_num=${o.code_num }">${o.code_num }</a>
								</td>
								<td>${o.max_o_date }</td>
								<td>${o.prod_name } <span style="font-size:12px;">..포함 ${o.ctnrow} 개</span>
								</td>
								<td><img src="${o.prod_img }" width="100" height="100"> </td>
								<td>${o.sum_total_price } </td>
								<td> 배송상태? </td>
							</tr>																
						</c:forEach>
					</tbody>
					</table>
				</form>
			</div>
			

</body>
</html>