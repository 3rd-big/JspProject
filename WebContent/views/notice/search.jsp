<%@ page language="java" pageEncoding="UTf-8"%>
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

</head>
<body>
	<%@include file="/views/common/header.jsp"%>
	<!-- 관리자 아니면 readonly -->
	<%-- <c:set var="str">
		<c:if test="${sessionScope.id != notice.id }">
			readonly
		</c:if>
	</c:set> --%>
	<form action="${pageContext.request.contextPath }/EditNoticeController"
		method="post">
		<table class="table table-hover table-sm mt-3 mb-5" border="1"
			cellspacing="0" style="width: 900px">
			<tr>
				<th>글 번호</th>
				<td><input type="text" value="${notice.num }" name="num"
					size="45" readonly></td>
			</tr>
<%-- 		<tr>
			<th>작성자</th>
				<td><input type="text" value="${notice.id }" name="writer"
					size="45" readonly></td>
			</tr>
 --%>
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
			<%-- <c:if test="${sessionScope.id == notice.id }"> --%>
			
				<tr>
					<td colspan="2"><input type="submit" value="수정">
					 <input type="button" value="삭제" onclick= "location.href = '${pageContext.request.contextPath }/DeleteNoticeController?num='+${notice.num}">
					 </td>
				</tr>
			<%-- </c:if> --%>
		</table>
	</form>
</body>
</html>