<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.ReviewVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	Review
	<c:forEach var="r" items="${review }">
		<div class="box">
			<div class="rating-star">
				<div class="star-container">
					<div class="star-point" style="width: 100%;">
						<img src="//image.adidas.co.kr/images/adidas/common/ico_rating.png"
							alt="">
						${r.rate }
					</div>
					<div class="star-bg">
						<img
							src="//image.adidas.co.kr/images/adidas/common/ico_rating_empty.png"
							alt="">
					</div>

				</div>
			</div>
			<div class="content" id="con_1">
				${r.content }
				
			</div>
			
			<div class="date">${r.r_date }</div>
			
		</div>
	</c:forEach>
</body>
</html>