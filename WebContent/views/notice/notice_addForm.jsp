<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>�������� ���</h3>
	<form action="${pageContext.request.contextPath }/noticeAddController" method="post">
		����: <input type="text" name="title"><br>
		����: <textarea rows="10" cols="30" name="content"></textarea><br>
		<input type="submit" value="���">
	</form>
</body>
</html>