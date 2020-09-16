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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<style type="text/css">
.container{
	height: auto;
	min-height: 77.5%;
	padding-bottom: 70px;
}

</style>
<body>
	<!-- Navigation -->
	<%-- <%@include file ="/views/common/header.jsp" %> --%>
	<%@include file ="/views/common/header2.jsp" %>
	<div class="container">
		<br>
<h3 class="text-center my-4"align ="center"> 공지사항 작성</h3><br>
	<div class="container" align ="center">
		<form name="noticeadd"
			action="${pageContext.request.contextPath }/WriteNoticeController"
			method="post" class="table table-sm mt-3 mb-5">
			<div >
			<table class="form-group " >
				<tr><td>title</td>
				<td><textarea rows="1" cols="100" placeholder="title" name="title" class="form-control"></textarea></td>			
				</tr>
				<tr><td>content</td>
				<td><textarea rows="7" cols="100" placeholder="content" name="content" class="form-control"></textarea></td>
				</tr>
			</table>
			</div>
			<button type="submit" class="btn btn-hover" align="right" style="width:100px; background-color:#4CAF50;color:white;">Submit</button>
		</form>
	</div> 
	</div>
	<!-- footer -->
	<%@include file="/views/common/footer2.jsp"%>
</body>
</html>