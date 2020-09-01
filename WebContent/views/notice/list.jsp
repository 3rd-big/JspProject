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

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resource/js/jquery.twbsPagination.js"
	type="text/javascript"></script>


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
   
</script>
</head>
<body><%@include file="/views/common/header.jsp"%>
	<h3 class="text-center my-4">공지사항</h3>
	<br>
	<div class="table my-4 ">
		<table class="table table-hover table-responsive-lg " align="right"
			id="twbsPagination">
			<thead class="thead-light">
				<tr class="d-flex">
					<th class="text-center  col-1">글번호</th>
					<th class="text-center col-5">제목</th>
					<th class="text-center col-3">게시일</th>
					<th class="text-center col-2">조회수</th>
				</tr>
			</thead>
			<tbody id="page_content">

				<c:forEach var="notice" items="${notices }" varStatus="status">
					<%-- <c:choose> --%>
					<%--  <c:when test="${status.count eq 2}"> --%>

					<tr class="text-center d-flex">
						<td class="text-center  col-1" >${notice.num }</td>
						<td class="text-center  col-5"><a
							href="${pageContext.request.contextPath }/ReadNoticeController?num=${notice.num}">
								${notice.title } </a></td>
						<td class="text-center  col-3">${notice.n_date }</td>
						<td class="text-center  col-2">${notice.view_count }</td>
					</tr>

					<%-- </c:when> --%>
					<%-- </c:choose> --%>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	<div align="right">
		<c:if test="${sessionScope.memberType == 0 }">
			<button id="addbtn" type="button" class="btn btn-primary active"
				onclick="location.href='${pageContext.request.contextPath }/views/notice/addForm.jsp'">글쓰기</button>
		</c:if>
	</div>

<!--pagination -->
	<!-- <div class="container">
		<nav aria-label="Page navigation">
			<ul class="pagination" id="pagination"></ul>
		</nav>
	</div> -->
</body>
</html>