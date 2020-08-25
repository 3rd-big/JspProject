<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/notice/Edit"
		method="post" name="f">
		<table border="1">
			<tr>
				<th>상품명</th>
				<td>
					<input type="text" value="${p.name }" name="name">
				</td>
			</tr>
			<tr>
				<th>상품상세설명</th>
				<td>
					<input type="text" value="${p.content }" name="content">
				</td>
			</tr>
			<td colspan="2">
				<input type="submit" value="수정">
				<input type="button" value="삭제" onclick="a()">
			</td>
		</table>
		<input type="hidden" name="num" value="${p.num }">
	</form>
</body>
</html>