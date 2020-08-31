<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Shop Item - Start Bootstrap Template</title>

<!-- Bootstrap core CSS -->
<link
	href="<%=request.getContextPath()%>/resource/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<%=request.getContextPath()%>/resource/css/shop-item.css"
	rel="stylesheet">
	
	
	<!-- 팝업 스크립트 -->
	<script type="text/javascript">
	
	
	
	
	
	
	function showPopup(currentId) {
		
		
		var idid = "ABC";
		idid = currentId
		 
		var url = "/JspProject/MemberManagePopupController?h_field="+ idid;
		window.open("", "pop_title", "width=400, height=300, left=200, top=200");
		console.log("idid:" +idid);
		
		
		var frmData = document.memberList;
		frmData.action = url;
		console.log(frmData.action)
		frmData.target = "pop_title";
		frmData.submit();
		
		
		
		
		
		
	}
			
		
	
	
	</script>
	
	
</head>
<body>

	<!-- Navigation -->
	<%@include file ="/views/common/header.jsp" %>
	
	
<h1>회원관리 페이지</h1>

<form id="memberList" name="memberList" method="get">
<table border="1">
		<tr>
			<th><input type="checkbox"></th>
			<th>ID</th>
			<th>PWD</th>
			<th>NAME</th>
			<th>EMAIL</th>
			<th>ADDRESS</th>
			<th>TYPE</th>
			<th>POINT</th>
			<th>수정/삭제</th>
		</tr>
		<c:forEach var="list" items="${members }" varStatus="status">
		<tr>
			<td><input type="checkbox"></td>
			<td>${list.id }</td>
			<td>${list.pwd }</td>
			<td>${list.name }</td>
			<td>${list.email }</td>
			<td>${list.addr }</td>
			<td>${list.type }</td>
			<td>${list.point }</td>
				<input type="hidden" name="currentId${status.index }" value="${list.id }">
			<td><input type="button"  value="수정" onClick="showPopup(currentId${status.index}.value)"></td>
			
		</tr>
		</c:forEach>
	</table>

</form>

</body>
</html>