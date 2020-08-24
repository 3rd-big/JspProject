<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style type="text/css">
		div {
			text-align: center;
		}
		
		#content {
			
		}
	</style>	
</head>
<body>
	<div>
		<h1>신상품</h1>
	</div>
	<hr>

	<c:forEach var="data" items="${data }">
		<tr>
			<td>
				<img src="${data.img}" width="300" height="300">
			</td>
		</tr>
	</c:forEach>
</body>
</html>