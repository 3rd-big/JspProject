<%@ page language="java" pageEncoding="UTf-8" import="model.NoticeVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- Bootstrap core CSS -->
<link href="<%=request.getContextPath()%>/resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="<%=request.getContextPath()%>/resource/css/shop-item.css" rel="stylesheet">
  


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
<body><%@include file="/views/common/header.jsp"%>
	<h3 class="text-center">공지사항</h3>
	<!-- 추가 : 수정, 삭제,  페이지 , 조회수 추가, 관리자 -->
	<br>
	<div class="table">
	<table class="table table-hover table-sm mt-3 mb-5" id="twbsPagination">
		<thead class="thead-light" style="background-color: white;">
			<tr>
				<th class="text-center">글번호</th>
				<th class="text-center">제목</th>
				<th class="text-center">게시일</th>
			</tr>
		</thead>
		<c:forEach var="notice" items="${notice }">
			<tr class="text-center">
				<td>${notice.num }</td>
				<td><a
					href="${pageContext.request.contextPath }/ReadNoticeController?num=${notice.num}">${notice.title }</a>
				</td>
				<td>${notice.n_date }</td>
			</tr>
		</c:forEach>
	</table>
	</div>
	<div align="right">
		<button type="button" class="btn btn-primary active"
			onclick="location.href='/views/notice/addform.jsp'">글쓰기</button>
	</div>
	<!-- 페이징 -->
	<div class="container" align="center">
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