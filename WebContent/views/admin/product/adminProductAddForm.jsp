<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<meta charset="UTF-8">
<title>Insert title here</title>
	<style type="text/css">
		table, td{
			border: 1px solid black;
		}
		table{
			width: 30%;
			height: 100px;
			margin: auto;
			text-align: center;
		}
	</style>
	<script type="text/javascript">
		$(document).ready
	
	
	</script>
</head>
<body>

	<!-- Navigation -->
	<%@include file="/views/common/header.jsp"%>

	<h1>상품등록 페이지</h1>

	<form action="${pageContext.request.contextPath }/ProductAddController"
		method="post" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<th>상품명</th>
				<td colspan="2"><input type="text" name="name"></td>
			<tr>
			<tr>
				<th>가격</th>
				<td colspan="2"><input type="text" name="price"></td>
			</tr>
			<tr>
				<th>대표 이미지</th>
				<td colspan="2"><input type="file" name="file"></td>
			</tr>
			<tr>
				<th>상세 이미지</th>
				<td><input type="file" name="file2"></td>
				<td><input type="button" id="addbtn" value="상세 이미지 추가"></td>
			</tr>
			<tr>
				<th>상세설명</th>
				<td colspan="2"><textarea rows="10" cols="30" name="content"></textarea></td>
			</tr>
			<tr>
				<td colspan="3"><input type="submit" value="등록"></td>
			</tr>
		</table>
	</form>
</body>
</html>