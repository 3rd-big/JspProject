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
		<c:forEach var="notices" items="${notices }">
		<tr>
			<td>${notices.num }</td>
			<td>
				<a href="${pageContext.request.contextPath }/notice/List?num=${notices.num }">
					${notices.title }
				</a>
			</td>
		</tr>
		</c:forEach>
	</table>
		
</body>
</html>