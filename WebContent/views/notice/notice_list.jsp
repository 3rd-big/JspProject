<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>게시판</h3>
	<a href="${pageContext.request.contextPath }/noticeAddController">
		게시글등록
	</a>
	<table border="1">
		<tr>
			<th>글 번호</th><th>글제목</th>
		</tr>
		<c:forEach var="notice" items="${notices }">
		
		<tr>
			<td>${notice.num }</td>
			<td>
				<a href="${pageContext.request.contextPath }/notice/Detail?num=${notice.num }">
					${notice.title }
				</a>
			</td>
		</tr>
		</c:forEach>
	</table>
		
</body>
</html>