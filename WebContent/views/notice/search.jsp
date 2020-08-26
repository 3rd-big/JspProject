<%@ page language="java" pageEncoding="UTf-8" import="model.NoticeVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- Bootstrap core CSS -->
<link
	href="<%=request.getContextPath()%>/resource/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<%=request.getContextPath()%>/resource/css/shop-item.css"
	rel="stylesheet">
<script>
function del(num){
location.href = "${pageContext.request.contextPath }/DeleteNoticeController?num="+num;
}
</script>
</head>
<body>
<%@include file="/views/common/header.jsp"%>

	<form action="${pageContext.request.contextPath }/EditNoticeController"
		method="post">
		<table class="table table-hover table-sm mt-3 mb-5"  border="1" cellspacing="0" style="width:900px" >
			<tr>
				<th>글 번호</th>
				<td><input type="text" value="${notice.num }" name="num"
					size="45" readonly></td>
			</tr>
			<tr>
				<th>작성날짜</th>
				<td><input type="text" value="${notice.n_date }" size="100"
					readonly></td>
			</tr>
			<tr>
				<th>글 제목</th>
				<td><input type="text" name="title" value="${notice.title }"
					size="100" ${str }></td>
			</tr>
			<tr>
				<th>글 내용</th>
				<td><textarea name="content" rows="10" cols="100">${notice.content }</textarea></td>
			</tr>
			<tr>
			<td colspan="2">
					<input type="submit" value="수정">
					<input type="button" value="삭제" onclick="del(${notice.num})">
					</td>
					</tr>
		</table>
	</form>
</body>
</html>