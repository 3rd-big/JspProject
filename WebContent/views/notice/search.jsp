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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
	<%@include file="/views/common/header.jsp"%>
	<br>
	<h4 style="margin: 0 50px; padding: 0 100px">공지사항</h4>
	<br>
	<div>
		<form
			action="${pageContext.request.contextPath }/EditNoticeController"
			method="post">
			<table class="table table-sm mt-3 mb-5" cellspacing="0"
				style="width:900px; height: 300px; margin: 0 150px; padding: 0 100px">

				<tr>
				<td>title<input type="text" class="form-control" name="title"
						value="${notice.title }" size="100" ${str } readonly style="background-color:white"></td>
					<td>no.<input type="text" class="form-control"
						value="${notice.num }" name="num" size="20" readonly style="background-color:white"></td>
				</tr>
				<tr>
					<td>content<textarea class="form-control" name="content" rows="7"
							cols="100" readonly style="background-color:white">${notice.content }</textarea></td>
					<td>date<input type="text" class="form-control"
						value="${notice.n_date }" size="20" readonly style="background-color:white"></td>
				</tr>

				<c:if test="${sessionScope.memberType == 0 }">
					<tr align="right">
						<td colspan="2"><input class="form-control" type="submit"
							value="edit" style="color: black;"> <input type="button"
							class="form-control" value="delete" style="color: black;"
							onclick="location.href = '${pageContext.request.contextPath }/DeleteNoticeController?num='+${notice.num}">
						</td>
					</tr>
				</c:if>
			</table>
		</form>
	</div>

</body>
</html>