<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="col-lg-auto">

		<div class="list-group">
			<a href="<%=request.getContextPath()%>/ProductAllListController" class="list-group-item">상품 목록</a>
			<a href="<%=request.getContextPath()%>/views/admin/product/adminProductAddForm.jsp" class="list-group-item">상품 등록</a>
		</div>

	</div>
	
</body>
</html>