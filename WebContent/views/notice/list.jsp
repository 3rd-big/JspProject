<%@ page language="java" contentType="text/html; charset=UTf-8"
	pageEncoding="UTf-8" import="model.NoticeVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="../jquery.twbsPagination.js" type="text/javascript"></script>
<script type="text/javascript">


	$(function() {
		window.pagObj = $('#pagination').twbsPagination({
			totalPages : 35,
			visiblePages : 10,
			onPageClick : function(event, page) {
				console.info(page + ' (from options)');
			}
		}).on('page', function(event, page) {
			console.info(page + ' (from event listening)');
		});
	});
</script>
</head>
<body>
	<h3>공지사항</h3>
	<a href="${pageContext.request.contextPath }/views/notice/addform.jsp">글작성</a>
	<br>

	<table class="table table-bordered table-hover" id="twbsPagination">
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>게시일</th>
		</tr>
		<c:forEach var="notice" items="${notice }">
			<tr>
				<td>${notice.num }</td>
				<td><a
					href="${pageContext.request.contextPath }/ReadNoticeController?num=${notice.num}">${notice.title }</a>
				</td>
				<td>${notice.n_date }</td>
			</tr>
		</c:forEach>
	</table>

	<!-- 페이지 , 조회수 추가, 부트스트랩  -->


	<div class="container">
		<nav aria-label="Page navigation">
			<ul class="pagination" id="pagination">

				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
			</ul>
		</nav>
	</div>
</body>
</html>