<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.ProductVO" %>
  <%@page import="model.ProductOrderVO" %>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.orderlist {
	padding: 1.5rem;
	vertical-align: top;
	border-top: 1px solid rgba(0, 0, 0, 0.05);
	font-size: 0.765625rem;
	text-transform: uppercase;
	text-align: inherit;
	box-sizing: border-box;
	display: table-cell;
	border-spacing: 2px;
	font-weight: bold;
	color: #55595c;
}

.table-light {
	background-color: white;
	display: table-row;
	vertical-align: inherit;
	border-color: inherit;
}

.table-active {
	background-color: rgba(0, 0, 0, 0.075);
}
</style>


</head>
<body>
	<c:if test="${o_state==0 }">
			<h3>주문 목록</h3>
		</c:if>
		
		
		<table class="orderlist" border="1">
		<thead>
			<tr class="table-active" >
				<th scope="col">주문번호 </th> 
				<th scope="col">제품명 </th> 
				<th scope="col">사진 </th> 
				<th scope="col">주문수량 </th> 
				<th scope="col">결제금액 </th> 
				<th scope="col">주문일 </th>
			</tr>
		</thead>
		<tbody >
			<c:forEach var="o" items="${list }">
				<tr class="table-light">
					<td>${o.num } </td>
					<td> ${o.prod_name } </td>
					<td> <img src="${o.prod_img }" width="200" height="200"> </td>
					<td>${o.o_quantity} </td> 
					<td>${o.total_price } </td> 
					<td>${o.o_date } </td>

				</tr>
			</c:forEach>
		</tbody>
		</table>
</body>
</html>