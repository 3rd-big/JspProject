<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.ReviewVO" %>

    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<%=request.getContextPath()%>/resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="<%=request.getContextPath()%>/resource/css/shop-item.css" rel="stylesheet">

<!-- 수정popup -->
<script type="text/javascript">
	function showUpdatePopup(){
		window.open("${pageContext.request.contextPath}/views/review/updateForm.jsp");
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
	<!-- Page Container -->
	<!-- 카테고리 -->
	<c:if test="${not empty sessionScope.id }">
	
	
		<div class="row2" >
	
	      <div class="col-lg-3">
	        <h1 class="my-4">My Page</h1>
	        <div class="list-group">
	        	<a href="${pageContext.request.contextPath }/OrderlistController?o_state=0" class="list-group-item">주문조회</a>
	        	<a href="${pageContext.request.contextPath }/ListReviewController" class="list-group-item">내가 쓴 리뷰 관리</a>
	          <a href="${pageContext.request.contextPath }/SearchController" class="list-group-item ">내 정보 수정</a>
	          
	          
	        </div>
	      </div>
	    </div>
	
	
		<table class="table table-hover table-sm mt-3 mb-5" border="1">
		<thead class="thead-light" style="background-color: white;">
			<tr class="text-center">
				<th scope="col">리뷰번호 </th> 
				<th scope="col">별점 </th> 
				<th scope="col">리뷰 내용 </th>
				<th scope="col">이미지 </th> 
				<th scope="col">리뷰 쓴 날짜 </th> 
				<th scope="col"> </th> 

				
			</tr>
		</thead>
		<tbody >
			<c:forEach var="r" items="${list }">
				<tr class="text-center">
					<td name="r_num">${r.num } </td>
					<td> ${r.rate } </td>
					<td> ${r.content } </td>
					<td> <img src="${r.img }" width="200" height="200"> </td>
					<td>${r.r_date } </td>
					<td><button type="button" class="btn btn-link" onclick="showUpdatePopup();">상품평 수정</button> </td>

				</tr>
			</c:forEach>
		</tbody>
		</table>
	</c:if>
</body>
</html>