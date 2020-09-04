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

	<!-- popup -->
<script type="text/javascript">
function showPopup(num) {
			var title = "상품평 작성";

			<%-- var url = "<%=request.getContextPath()%>/views/review/addForm.jsp?p_num="+num; --%>
			var url = "<%=request.getContextPath()%>/AddReviewFormController?p_num="+num;
			var options = 'top=50, left=400, width=800, height=700, status=no, menubar=no, toolbar=no';
		    window.open(url, title, options);
		} 
		
</script>
<style type="text/css">
.btn btn-link{
	position: absolute;
    top: 50%;
    left: 50%;
    width: 680px;
    min-height: 666px;
    padding: 0 20px 88px;
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
			<div class="orderlistbox">
				
				<h3>주문 목록</h3>
				
			
				<form id="orderList" name="orderList" method="post">
					<table class="table table-hover table-sm mt-3 mb-5" border="1">
					<thead class="thead-light" style="background-color: white;">
						<tr class="text-center">
							<th scope="col">주문번호 </th> 
							<th scope="col">제품명 </th> 
							<th scope="col">사진 </th>
							<th scope="col">사이즈 </th> 
							<th scope="col">주문수량 </th> 
							<th scope="col">결제금액 </th> 
							<th scope="col">주문일 </th>
							<th scope="col">상품평 쓰기</th>
							
						</tr>
					</thead>
					<tbody >
						<c:forEach var="o" items="${list }">
							<tr class="text-center">
								<td name="order_num">${o.num } </td>
								<td name="order_product_name"> ${o.prod_name } </td>
								<td> <img src="${o.prod_img }" width="200" height="200"> </td>
								<td>${o.p_size} </td> 
								<td>${o.o_quantity} </td> 
								<td>${o.total_price } </td> 
								<td>${o.o_date }</td>
								<td><a href="${pageContext.request.contextPath }/views/review/addForm.jsp?p_num=${o.p_num }">상품평 작성</a></td><!-- o.p_num 전달 태수 -->
								<td><button type="button" class="btn btn-link" onclick="showPopup('${o.p_num }');">상품평 작성</button> </td>
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