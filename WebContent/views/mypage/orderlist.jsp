<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.ProductVO" %>
  <%@page import="model.ProductOrderVO" %>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 조회</title>
<link href="<%=request.getContextPath()%>/resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
 <%--  <link href="<%=request.getContextPath()%>/resource/css/shop-item.css" rel="stylesheet"> --%>

	<!-- popup -->
<script type="text/javascript">


<%-- 		function showPopup(p_num,o_num) {		tsseo 주석처리 0904 15:33

			var title = "상품평 작성";

			var url = "<%=request.getContextPath()%>/views/review/addForm.jsp?p_num="+p_num"&o_num="+o_num";
			var url = "<%=request.getContextPath()%>/AddReviewFormController?p_num="+num;
			var options = 'top=50, left=400, width=800, height=700, status=no, menubar=no, toolbar=no';
		    window.open(url, title, options);
		} --%>
		
		function popUpClosed() {
			var code_num = document.getElementById('code_num').value;
			var param = encodeURI(code_num);
			location.href="${pageContext.request.contextPath }/OrderlistController2?code_num="+code_num; 
		}
		
		function reviewAddFormPopUp(p_num, num) {

 			var pop_title = "리뷰 작성";

			window.open("", pop_title, "width=800, height=700, left=200, top=200");
			
			var frmData = document.orderList;
			frmData.target = pop_title;
			frmData.action = "<%=request.getContextPath()%>/AddReviewPopupController?p_num=" + p_num + "&num=" + num;
		}
		
</script>
<style type="text/css">
.container{
	height: auto;
	min-height: 100%;
	padding-bottom: 70px;
}
.orderlistbox{
	height: auto;
}
.btn btn-link{
	position: absolute;
    top: 50%;
    left: 50%;
    width: 680px;
    min-height: 666px;
    padding: 0 20px 88px;
}
.orderlistbox{
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
	<%-- <%@include file ="/views/common/header.jsp" %> --%>
	<%@include file ="/views/common/header2.jsp" %>
	
	<div class="container">
		<h1 class="my-4">My Page</h1>
		 <div class="row">
			
			<!-- leftNavigation -->
			<jsp:include page = "/views/common/mypageCategory.jsp" />
			<!-- /leftNavigation -->
			<div class="orderlistbox">
				
				<h3>주문 목록</h3>
				<!-- <hr style="border: 0; height: 3px; background: #ccc;"> -->
			
				<form id="orderList" name="orderList" method="post">
					<table class="table table-hover table-sm mt-3 mb-5" >
					<thead class="thead-light1" style="background-color: white;" >
						<tr class="text-center">
							<th scope="col">No. </th> 
							<th scope="col">제품명 </th> 
							<th scope="col">사진 </th>
							<th scope="col">사이즈 </th> 
							<th scope="col">주문수량 </th> 
							<th scope="col">결제금액 </th> 
							<th scope="col">주문일 </th>
							<th scope="col">상품평</th>
							
							
						</tr>
					</thead>
					<tbody >
						<c:forEach var="o" items="${list }">
							<tr class="text-center">
								<input type="hidden" id="code_num" name="code_num" value="${o.code_num }">
								<td name="o_num">${o.num } </td>
								<td id="product_name" name="order_product_name"> ${o.prod_name } </td>
								<td> <a href="${pageContext.request.contextPath }/DetailController?num=${o.p_num }">
									<img src="${o.prod_img }" width="100" height="100"> </a>
									</td>
								<td>${o.p_size} </td> 
								<td>${o.o_quantity} </td> 
								<td>${o.priceView } </td> 
								<td>${o.o_date }</td>
								<c:if test="${o.r_state==0 }">
									<td><button type="submit" class="btn btn-outline-secondary" onclick="reviewAddFormPopUp('${o.p_num }','${o.num }');">작성하기</button> </td>
								</c:if>
								<c:if test="${o.r_state==1 }">
									<td>작성완료</td>
								</c:if>
								
								
							</tr>																
						</c:forEach>
					</tbody>
					</table>
				</form>
			</div>
		</div>
		</div>
		
	<!-- footer -->
	<%@include file="/views/common/footer2.jsp"%>
</body>
</html>