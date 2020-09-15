<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="common.Common" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<title>Shop Item - Start Bootstrap Template</title>
	
	<!-- Bootstrap core CSS -->
	<link href="<%=request.getContextPath()%>/resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- Custom styles for this template -->
	<link href="<%=request.getContextPath()%>/resource/css/shop-item.css" rel="stylesheet">

	<!-- Bootstrap core JavaScript -->
	<script src="<%=request.getContextPath()%>/resource/vendor/jquery/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


	<style type="text/css">
		#detail-img {
			margin-top: 30px;
		}
		
		#viewImg {
			margin-left: 30px;
			margin-top: 30px;
		}
		
		#product-info {
			margin-top: 30px;
			padding-left: 200px;
		}

		#btn_cart{
			margin-top: 10px;
		}

		#select-quantity{
			padding:10px;
		}
		#profile-img{
			float: right;
		}
		#review-img{
			
		}
		#review-id{
			float: right;
		}
	</style>	



	<script type="text/javascript">
	
		
	
		<!-- 장바구니 클릭 상품 번호 전달 -->
		 function addCart(productNum) {
			
			if(${sessionScope.id == null }){
				if(confirm('로그인이 필요한 서비스 입니다. 로그인 하시겠습니까?')){
					location.href = "<%=request.getContextPath()%>/views/member/login.jsp";
					/* location.href= "${pageContext.request.contextPath }/LoginController"; */
					return;
				}else{
					return;	
				}
			} else{
				
				var unSizeCheck = $("#selected").length ? false : true;
				if(unSizeCheck){
					alert('사이즈를 선택해주세요');
					return;
				}
				
				if(confirm('장바구니에 추가하시겠습니까?')){
					
					var size = $("#selected").text();
					var quantity = $("#select-quantity").text();
					var allData = {"productNum": productNum, "size": size, "quantity": quantity};
			
					$.ajax({
						type: "post",
						async: false,
						url: "${pageContext.request.contextPath }/AddProductCartController",
						data: allData,
						success: function (result) {
							/* var resultMessage = $.trim(result); */
    							if(result == "AddCart Success"){
								if(confirm('장바구니에 추가되었습니다. 장바구니로 이동하시겠습니까?')){
									<%-- location.herf = "<%=request.getContextPath()%>/OrderlistController?o_state=0"; --%>
									location.href= "${pageContext.request.contextPath }/OrderlistController?o_state=0";
								}
							}else if(result == "Already Existed"){
								if(confirm('장바구니에 이미 해당 상품이 있습니다. 장바구니로 이동하시겠습니까?')){
									<%-- location.herf = "<%=request.getContextPath()%>/OrderlistController?o_state=0"; --%>
									location.href= "${pageContext.request.contextPath }/OrderlistController?o_state=0";
								}
							}else if(result == "Sold Out"){
								alert('재고가 부족합니다');
							}else{
								alert('error');
							}

						}
					});
					
				}
				
			} 

			
		}
		
		function directOrder(productNum) {
			var size = $("#selected").text();
			var quantity = $("#select-quantity").text();
			var allData = {"productNum": productNum, "size": size, "quantity": quantity};
	
			location.href ="<%=request.getContextPath()%>/DirectOrderPageController?productNum=" +productNum +"&size=" +size+"&quantity=" + quantity;
			
		}
		
		
		function addReview(id) {
			alert(id);
			if(id == null){
				alert('로그인 후 시도해주세요');
			}else{
				alert('구매 후 시도해주세요');
			}
		}
	
		
		$(document).ready(function(){

			var DefaultPrice = ${product.price };
			
			$.ajax({
				url : "${pageContext.request.contextPath }/DetailImgListController",
				type : "get",
				data : "p_num=" + ${product.num},
				success : function(result) {
					arr = $.parseJSON(result);
					var html = "<img id='smallImg' src='${product.img }' width='50' height='75'><br><br>";
					for(i = 0; i<arr.length; i++){
						html += "<img id='smallImg' src='" + arr[i].img + "' width='50' height='75'><br><br>";
					}
					$("#detail-img").html(html);
				}
			});

			<!-- 상세 이미지에 마우스 올려놓으면 우측 확대이미지 변경 -->
			$(document).on('mouseover', '#smallImg', function () {
				var img = $(this).attr('src');
				$('#viewImg').attr('src', img);
			});
			
			<!-- "상품평 전체 보기" 클릭 시 하단 Product reviews로 이동 -->
			$("#rate").click(function scroll_move() {
				var offset = $("#product-reviews").offset();
				$("html").animate({scrollTop:offset.top}, 400);
			});
			<!-- 사이즈 선택 -->
			$("ul.size-selected li").click(function () {
				$("ul.size-selected li").attr("class", "btn btn-outline-secondary");
				$("ul.size-selected li").attr("id", "un-selected")
				$(this).attr("class", "btn btn-secondary");
				$(this).attr("id", "selected");
			});
			
			<!-- 상품 수량 빼기 -->
			$("#decQuantity").click(function countDown() { 
				var quantity = Number($("#select-quantity").text());
				if(quantity >= 2){
					$("#select-quantity").html(quantity-1);	
					$(".quantity-total-price").html('￦'+((quantity-1) * DefaultPrice));

					
				}
				if(quantity == 2){
					$("#countDown").attr("src", "sample_img/ico_decQ_disabled.png");
				}
				
			});
			
			<!-- 상품 수량 증가 -->
			$("#incQuantity").click(function countUp() {
				var quantity = Number($("#select-quantity").text());
				$("#select-quantity").html(quantity+1);
				$(".quantity-total-price").html('￦'+((quantity+1) * DefaultPrice));
				$("#countDown").attr("src", "sample_img/ico_decQ.png");
			});
			
			
		});
		
		
	</script>


</head>

<body>

	<!-- Navigation -->
	<%-- <%@include file="/views/common/header.jsp"%> --%>
	<%@include file="/views/common/header2.jsp"%>

	<!-- Page Content -->
	<div class="container" >
		<article class="row">
		
			<div class="col-lg-1 rounded" id="detail-img">
				<!-- ajax로 해당 상품 디테일 이미지 생성 -->
			</div>
			
			<div class="col-lg-4">
				<img class="card-img-top img-fluid rounded" id="viewImg" src="${product.img }">
			</div>
			<div class="col-lg-7" id="product-info">
			
				<!-- 평점 총합 변수 선언 -->
				<c:set var="totalReRating" value="0" />
				
				<!-- 해당 상품의 모든 리뷰 forEach -->
				<c:forEach var="review" items="${reviews}" varStatus="status">
					<!-- 평점 총합에 누적 -->
					<c:set var="totalReRating" value="${totalReRating + review.rate}"/>
					<!-- 마지막 리뷰일 경우 -->
					<c:if test="${status.last }">
						<!-- 평점 평균 반올림 -->
						<c:set var="avgReRating" value="${totalReRating / status.count}" />
						<c:set var="avgReRating" value="${avgReRating + (((avgReRating%1)>=0.5)?(1-(avgReRating%1)):-(avgReRating%1)) }" />
					</c:if>
				</c:forEach>
			
				<!-- 채워진 별 -->															
				<c:forEach var="colorStar" begin="1" end="${avgReRating}">
					<small class="text-warning">&#9733;</small>
				</c:forEach>
				
				<!-- 빈 별 -->
				<c:forEach var="emptyStar" begin="1" end="${5 - avgReRating}">
					<small class="text-warning">&#9734;</small>
				</c:forEach>
				<small>${reviews.size() } </small><a href="#" id="rate" onclick="scroll_move()" >상품평 전체 보기</a><br><br>
				
				<h3>${product.name }</h3><br>
				<h4 class="quantity-total-price">￦${product.priceView }</h4><br>
				<p>${product.content }</p>
				<br>
				<ul class="size-selected">
					<li class="btn btn-outline-secondary" id="un-selected" value="XL">XL</li>
					<li class="btn btn-outline-secondary" id="un-selected" value="L">L</li>
					<li class="btn btn-outline-secondary" id="un-selected" value="M">M</li>
				</ul>
				<br>
				<div class="select-amount">
					<a href="#" id="decQuantity" onclick="countDown()">
						<img src="sample_img/ico_decQ_disabled.png" id="countDown">
					</a>
					<span id="select-quantity">1</span>
					<a href="#" id="incQuantity" onclick="countUp()">
						<img src="sample_img/ico_incQ.png" id="countUp">
					</a>
				</div>
				<br><br>
				
				<div style="text-align: center;">
					<div id="btn_buy" >
						<input class="btn btn-outline-dark btn-lg btn-block" type="button" value="결제하기" onClick="directOrder('${product.num}');">
					</div>
					<div id="btn_cart">
						<input class="btn btn-dark btn-lg btn-block" type="button" value="장바구니" onClick="addCart('${product.num}');">
					</div>
				</div>
			</div>
			

		</article>
		
		<!-- /.card -->
		<div class="card card-outline-secondary my-4">
			<div class="card-header" id="product-reviews">Product reviews</div>
			<div class="card-body">
			
				<c:if test="${0 == reviews.size() }">
					<p>리뷰가 없습니다.</p>
				</c:if>
				
				<c:forEach var="review" items="${reviews }">
					<div class="reviewer-info">
						<div>
							<img src="sample_img/user_basic.png" width="50" id="profile-img">
							<p><small class="text-muted" id="review-id"><b>${review.m_id }</b></small></p>
							<smal>${review.r_date }</smal>
							<!-- 채워진 별 -->															
							<c:forEach var="colorStar" begin="1" end="${review.rate}">
								<small class="text-warning">&#9733;</small>
							</c:forEach>
							
							<!-- 빈 별 -->
							<c:forEach var="emptyStar" begin="1" end="${5 - review.rate}">
								<small class="text-warning">&#9734;</small>
							</c:forEach>
						</div>
						
						<img width="50px" height="75" src="${review.img}" id="review-img">
						${review.content }
						<hr>
					</div>
				</c:forEach>

				<input type="button" class="btn btn-success" value="Leave a Review" onClick="addReview(<%=(String)session.getAttribute("id")%>);" > <!-- 미완성 -->
			</div>
		</div>
		<!-- /.card -->
	
	
	</div>
	
	<!-- /.container -->
<%--
	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your Website 2020</p>
		</div>
		<!-- /.container -->
	</footer>
 --%>
			<!-- footer -->
	<%@include file="/views/common/footer2.jsp"%>

</body>

</html>