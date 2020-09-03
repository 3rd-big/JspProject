<%@ page language="java" pageEncoding="UTf-8" import="model.NoticeVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.sql.*"%>
<%@ page import="notice.* "%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Insert title here</title>
<!-- Bootstrap core CSS -->
<link
	href="<%=request.getContextPath()%>/resource/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<%=request.getContextPath()%>/resource/css/shop-item.css"
	rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<%--  
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

 <script src="<%=request.getContextPath()/resource/js/jquery.twbsPagination.js" type="text/javascript"></script> 
--%>
<!-- pagination 
<script type="text/javascript">
    $(function () {
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: 10,
            visiblePages: 5,
            onPageClick: function (event, page) {
            	 $('#page-content').text('Page ' + page);
            	   paging(page);
            }
        });
    });
   
</script> -->
<script>
</script>
</head>
<body><%@include file="/views/common/header.jsp"%>
<div class="container">	<br>
	<h3 class="text-center my-4">공지사항</h3>
	<div class="container"align =" right">
		<c:if test="${sessionScope.memberType == 0 }">
			<button id="addbtn" type="button" class="btn btn-primary active" style="margin : 0 90px ;width : 100px; height:35px;
				background-color:#4CAF50;color:white;"
				onclick="location.href='${pageContext.request.contextPath }/views/notice/addForm.jsp'">write</button>
		</c:if>
	</div>
	<br>
	<div class="container">
	<div class="table my-4 " style ="margin :0 60px; padding: 0 60px;">
		<table class="table table-hover table-responsive-lg"
			id="twbsPagination">
			<thead class="thead-light">
				<tr class="d-flex">		
					<th class="text-center  col-1">no.</th>
					<th class="text-center col-5">title</th>
					<th class="text-center col-3">date</th>
					<th class="text-center col-2">views</th>
				</tr>
			</thead>
			<tbody id="page_content">
				<c:forEach var="notice" items="${notices }" >
					<tr class="text-center d-flex table-hover">
						<td class="text-center  col-1" >${notice.num }</td>
						<td class="text-center  col-5" id="title" name="title"><a href ="${pageContext.request.contextPath }/ReadNoticeController?num=${notice.num}" 
							 style="color:black";>
								${notice.title }</a></td>
						<td class="text-center  col-3">${notice.n_date }</td>
						<td class="text-center  col-2">${notice.view_count }</td>
					</tr>

				</c:forEach>
			</tbody>
		</table>
		</div>
	</div>
</div>


<!--pagination -->
	<!-- <div class="container">
		<nav aria-label="Page navigation">
			<ul class="pagination" id="pagination"></ul>
		</nav>
	</div> -->

</body>
