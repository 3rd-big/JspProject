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


</head>
<body>
<%@include file="/views/common/header.jsp"%>
	<h3>공지사항 등록</h3>
	<form name ="noticeadd"action="${pageContext.request.contextPath }/WriteNoticeController" method="post">
		제목 : <input type="text" name="title"><br>
	         내용 : <textarea rows="5" cols="30"name="content"></textarea><br>
		<input type="submit" value="등록">
	</form>
</body>
</html>