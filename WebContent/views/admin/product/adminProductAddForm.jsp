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
		td{
			text-align: left;
		}
		table{
			width: 30%;
			height: 100px;
			margin: auto;
			text-align: center;
		}
	</style>


<script src="<%=request.getContextPath()%>/resource/vendor/jquery/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">

	$(document).ready(function() {

		$("#detail_img1").hide();
		$("#detail_img2").hide();
		$("#detail_img3").hide();
		
		$("#addbtn").click(function() {
			if(!$("#detail_img1").is(":visible")){
				$("#detail_img1").show();
			}else if(!$("#detail_img2").is(":visible")){
				$("#detail_img2").show();
			}else if(!$("#detail_img3").is(":visible")){
				$("#detail_img3").show();
			}
		});
		$("#delbtn").click(function() {
			if($("#detail_img3").is(":visible")){
				$("#detail_img3").hide();
			}else if($("#detail_img2").is(":visible")){
				$("#detail_img2").hide();
			}else if($("#detail_img1").is(":visible")){
				$("#detail_img1").hide();
			}
		});

	});
	
</script>
</head>
<body>

	<!-- Navigation -->
	<%@include file="/views/common/header.jsp"%>

	<h1 style="text-align: center;">상품등록 페이지</h1>

	<input type="button" id="addbtn" value="상세 이미지 추가"> 
	<input type="button" id="delbtn" value="상세 이미지 삭제">

	<form action="${pageContext.request.contextPath }/ProductAddController" method="post" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<th>상품명</th>
				<td><input type="text" name="name"></td>
			<tr>
			<tr>
				<th>가격</th>
				<td><input type="text" name="price"></td>
			</tr>
			<tr>
				<th>대표 이미지</th>
				<td><input type="file" name="file"></td>
			</tr>
			<tr>
				<th>상세 이미지1</th>
				<td><input type="file" name="file1"></td>
			</tr>
			<tr id="detail_img1">
				<th>상세 이미지2</th>
				<td><input type="file" name="file2"></td>
			</tr>
			<tr id="detail_img2">
				<th>상세 이미지3</th>
				<td><input type="file" name="file3"></td>
			</tr>
			<tr id="detail_img3">
				<th>상세 이미지4</th>
				<td><input type="file" name="file4"></td>
			</tr>
			<tr>
				<th rowspan="2">상세설명</th>
				<td><textarea rows="10" cols="30" name="content"></textarea></td>
			</tr>
			<tr>
				<td><input type="submit" value="등록"></td>
			</tr>
		</table>
	</form>

</body>
</html>