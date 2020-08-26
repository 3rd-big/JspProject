<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>공지사항 등록</h3>
	<form action="${pageContext.request.contextPath }/noticeAddController" method="post">
		제목: <input type="text" name="title"><br>
		내용: <textarea rows="10" cols="30" name="content"></textarea><br>
		<input type="submit" value="등록">
	</form>
</body>
</html>