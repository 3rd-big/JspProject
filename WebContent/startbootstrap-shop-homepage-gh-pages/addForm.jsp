    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>상품 등록</h3>
	<form action="${pageContext.request.contextPath }/AddController" method="post" enctype="multipart/form-data">
		상품명: <input type="text" name="name"><br>
		가격: <input type="text" name="price"><br>
		상품이미지 등록: <input type="file" name="file"><br>
		상세설명: <textarea rows="10" cols="30" name="content"></textarea><br>
		<input type="submit" value="등록">
	</form>
</body>
</html>