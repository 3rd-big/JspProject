<%@ page language="java" pageEncoding="UTf-8" import="model.NoticeVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.sql.*"%>
<%@ page import = "notice.* " %>

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


</head>
<body><%@include file="/views/common/header.jsp"%>
	<h3 class="text-center my-4">공지사항</h3>
	<br>
	<div class="table my-4 ">
		<table class="table table-hover table-responsive-lg "
			id="twbsPagination">
			<thead class="thead-light">
				<tr class="d-flex">
					<th class="text-center  col-1">글번호</th>
					<th class="text-center col-5">제목</th>
					<th class="text-center col-3">게시일</th>
				</tr>
			</thead>
			<tbody>
				<%
				String pageParam = request.getParameter("page");
				int totalCount = 10;
				int pageCount = 5;
				int start = 1;
				int totalRows =  100;
			
				
				int totalPages = totalRows % totalCount == 0 ? totalRows / totalCount : (totalRows / totalCount) + 1;
				if (totalPages == 0) {
					totalPages = 1;
				}
				if (pageParam == null || pageParam.length() == 0 || Integer.parseInt(pageParam) > totalPages) {
					pageParam = "1";
				}
				int cPage = Integer.parseInt(pageParam);
				if (cPage != 1) {
					start = (cPage - 1) * totalCount + 1;
				}
				int currentBlock = cPage % pageCount == 0 ? cPage / pageCount : (cPage / pageCount) + 1;
				int startPage = (currentBlock - 1) * pageCount + 1;
				int endPage = startPage + pageCount - 1;
				if (endPage > totalPages) {
					endPage = totalPages;
				}

				%>

				<c:forEach var="notice" items="${notice }">
					<tr class="text-center d-flex">
						<td class="text-center  col-1">${notice.num }</td>
						<td class="text-center  col-5"><a
							href="${pageContext.request.contextPath }/ReadNoticeController?num=${notice.num}">${notice.title }</a>
						</td>
						<td class="text-center  col-3">${notice.n_date }</td>
					</tr>
				</c:forEach>


			</tbody>
		</table>
	</div>
	<div align="right">
		<button type="button" class="btn btn-primary active"
			onclick="location.href='${pageContext.request.contextPath }/views/notice/addForm.jsp'">글쓰기</button>
	</div>
	<!--pagination -->
	<div class="container" align="center">
		<nav aria-label="Page navigation example">
				<ul class="pagination justify-content-center">
					<%
						if (startPage == 1) {
					%>
					<%
						for (int i = startPage; i <= endPage; i++) {
						if (i == cPage) {
					%>
					<li class="page-item active"><a class="page-link"
						href="list.jsp?page=<%=i%>"><%=i%></a></li>
					<%
						} else {
					%>
					<li class="page-item"><a class="page-link"
						href="list.jsp?page=<%=i%>"><%=i%></a></li>
					<%
						}
					%>
					<%
						}
						}
					%>
				
				</ul>
			</nav>
	</div>

</body>
</html>