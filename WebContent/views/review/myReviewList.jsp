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
	function showUpdatePopup(num){
		var title = "상품평 수정";

		var url = "<%=request.getContextPath()%>/EachReviewController?r_num="+num;
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
.reviewlistbox{
	margin-left: 50px;
	width:850px; 
	max-width:100%;
}
table{
	table-layout:fixed;
}

#content{
	word-break:break-all;
}
</style>

</head>
<body>
<!-- Navigation -->
	<%@include file ="/views/common/header.jsp" %>
	<!-- Page Container -->

		<div class="container">
	        <h1 class="my-4">My Page</h1>
	        <div class="row">
		       <!-- leftNavigation -->
				<jsp:include page = "/views/common/mypageCategory.jsp" />
				<!-- /leftNavigation -->
			<div class="reviewlistbox">
				
				<h3>내가 쓴 리뷰 목록</h3>
	     	
	
	
				<table class="table table-hover table-sm mt-3 mb-5">
				<thead class="thead-light1" style="background-color: white;">
					<tr class="text-center">
						<th scope="col">No. </th> 
						<th scope="col">별점 </th> 
						<th id="content" scope="col">리뷰 내용 </th>
						<th scope="col">이미지 </th> 
						<th scope="col">리뷰 쓴 날짜 </th> 
						<th scope="col">상품평 수정</th> 
		
						
					</tr>
				</thead>
				<tbody >
					<c:forEach var="r" items="${list }">
						<tr class="text-center">
							<td name="r_num">${r.num } </td>
							<td> ${r.rate } </td>
							<td> ${r.content } </td>
							<td> <img src="${r.img }" width="100" height="100"> </td>
							<td>${r.r_date } </td>
							<td><a href="${pageContext.request.contextPath }/EachReviewController?r_num=${r.num }">수정하기</a> </td>
							<td><button type="button" class="btn btn-link" onclick="showUpdatePopup('${r.num }');">팝업 수정</button> </td>
		
						</tr>
					</c:forEach>
				</tbody>
				</table>
		</div>
	</div>
	</div>
	
	 
	    
</body>
</html>