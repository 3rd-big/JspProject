<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.NoticeVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
function del(num){
location.href = "${pageContext.request.contextPath }/DelNoticeController?num="+num;
}
</script>
</head>
<body>

	<h3>글 읽기</h3>
	<form action="${pageContext.request.contextPath }/EditNoticeController"
		method="post">
		<table border="1" cellspacing="0">
			<tr>
				<th>글 번호</th>
				<td><input type="text" value="${notice.num }" name="num"
					size="45" readonly></td>
			</tr>
			<tr>
				<th>작성날짜</th>
				<td><input type="text" value="${notice.n_date }" size="45"
					readonly></td>
			</tr>
			<tr>
				<th>글 제목</th>
				<td><input type="text" name="title" value="${notice.title }"
					size="45" ${str }></td>
			</tr>
			<tr>
				<th>글 내용</th>
				<td><textarea name="content" rows="15" cols="45" ${str }>${notice.content }</textarea></td>
			</tr>

			<tr>
				<td colspan="2"><input type="submit" value="수정"> <input
					type="button" value="삭제" onclick="del(${notice.num})"></td>
			</tr>
		</table>
	</form>
</body>
</html>