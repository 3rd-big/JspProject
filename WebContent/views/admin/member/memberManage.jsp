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
		
		var pop_title ="회원 관리";
		var id = currentId;
		window.open("", pop_title, "width=500, height=500, left=200, top=200");
		
		var frmData = document.memberList;
		frmData.target = pop_title;
		frmData.action = "<%=request.getContextPath()%>/MemberManagePopupController?currentId=" + currentId;
		console.log("currentId: " + currentId);
		console.log(frmData.action);
		
	
	}
			
		
	
	
	</script>
	
<style type="text/css">

body{
	font:Apple SD Gothic Neo;
}

	
</style>
	
</head>
<body>

	<!-- Navigation -->
	<%@include file="/views/common/header.jsp"%>
	<!-- Page Container -->
	<div class="container">
		
		<h3 class="text-center my-4">회원관리</h3>
		<div class = "managememberbox">			
				<form id="memberList" name="memberList" method="post">
				<table class="table table-hover table-sm mt-3 mb-5">
					<thead class="thead-light">
						<tr class="d-flex">
							<th class="text-center col-1"><input type="checkbox"></th>
							<th class="text-center col-1">ID</th>
							<th class="text-center col-1">PWD</th>
							<th class="text-center col-1">NAME</th>
							<th class="text-center col-2">EMAIL</th>
							<th class="text-center col-3">ADDRESS</th>
							<th class="text-center col-1">TYPE</th>
							<th class="text-center col-1">POINT</th>
							<th class="text-center col-1">수정/삭제</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="list" items="${members }" varStatus="status">
						<tr class="text-center d-flex">
							<td class="text-center  col-1"><input type="checkbox"></td>
							<td class="text-center  col-1">${list.id }</td>
							<td class="text-center  col-1">${list.pwd }</td>
							<td class="text-center  col-1">${list.name }</td>
							<td class="text-center  col-2">${list.email }</td>
							<td class="text-center  col-3">${list.addr }</td>
							<td class="text-center  col-1">${list.type }</td>
							<td class="text-center  col-1">${list.point }</td>
							<td><input type="submit" class="btn btn-secondary" value="수정" onClick="showPopup('${list.id}')"></td>
							
						</tr>
						</c:forEach>
					</tbody>
					</table>
				
				</form>
		</div>
		</div>
	
		

</body>
</html>