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
		<hr>
		<c:forEach var="newProduct" items="${newProducts }">
			<a href="${pageContext.request.contextPath }/DetailController?num=${newProduct.num }">
				<img src="${newProduct.img}" width="200" height="300">
			</a>
		</c:forEach>
	</div>
	<div>
		<h1>인기순</h1>
		<hr>
		<c:forEach var="bestProduct" items="${bestProducts }">
			<a href="${pageContext.request.contextPath }/DetailController?num=${bestProduct.num }">
				<img src="${bestProduct.img}" width="200" height="300">
			</a>
		</c:forEach>
	</div>
</body>
</html>