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

<body>
	<!-- Navigation -->
	<%-- <%@include file ="/views/common/header.jsp" %> --%>
	<%@include file ="/views/common/header2.jsp" %>
<h4 style="margin : 0 50px; padding: 0 100px"> 공지사항 작성</h4><br>
	<div class="container">
		<form name="noticeadd"
			action="${pageContext.request.contextPath }/WriteNoticeController"
			method="post">
			<div class="form-group">
				<label>title</label>
				<textarea rows="1" cols="80" placeholder="title" name="title"></textarea>
				<br>
			</div>
			<div class="form-group">
				<label>content</label>
				<textarea rows="10" cols="80" placeholder="content" name="content"></textarea>
				<br>
			</div>
			<button type="submit" class="btn btn-hover" align="right" style="width:100px; background-color:#4CAF50;color:white;">Submit</button>
		</form>
	</div> 
	<!-- footer -->
	<%@include file="/views/common/footer2.jsp"%>
</body>
</html>