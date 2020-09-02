<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		
		.size-list > li{
			display: inline;
			border: 1px solid #bcbcbc;
			padding: 10px;
		}

		#btn_buy, #btn_cart{
			display: inline;
			border: 1px solid #bcbcbc;
			margin: 10px;
			padding: 15px;
		}
		.size-selected{
			background-color: gray;
			color: white;
		}
		#select-quantity{
			padding:10px;
		}

	</style>	



	<script type="text/javascript">
	
		<!-- 장바구니 클릭 상품 번호 전달 -->
		function addCart(productNum) {
			var size = $(".size-selected").text();
			var quantity = $("#select-quantity").text();
			var allData = {"productNum": productNum, "size": size, "quantity": quantity};
	
			$.ajax({
				type: "post",
				async: false,
				url: "${pageContext.request.contextPath }/AddProductCartController",
				data: allData,
				success: function (result) {
					alert("장바구니에 추가되었습니다");
				}
			});
			
		}
		
		function directOrder(productNum) {
			var size = $(".size-selected").text();
			var quantity = $("#select-quantity").text();
			var allData = {"productNum": productNum, "size": size, "quantity": quantity};
	
			$.ajax({
				type: "get",
				async: false,
				url: "${pageContext.request.contextPath }/DirectOrderPageController",
				data: allData,
				success: function (result) {
					console.log(result);
					document.innerHTML = result;
					
					alert("결제페이지로 이동");

				}
				
			});
			
		}
		
		
	
	
		$(document).ready(function(){
			
			$.ajax({
				url : "${pageContext.request.contextPath }/DetailImgListController",
				type : "get",
				data : "p_num=" + ${product.num},
				success : function(result) {
					arr = $.parseJSON(result);
					var html = "";
					for(i = 0; i<arr.length; i++) {
						html += "<img id='smallImg' src='" + arr[i].img + "' width='50' height='75'><br><br>";
					}
					$("#detail-img").html(html);
				}
			});

			/* <!-- 상세 이미지에 마우스 올려놓으면 우측 확대이미지 변경 --> */
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
			$("ul.size-list li").click(function () {
				$("ul.size-list li").removeClass("size-selected");
				$(this).addClass("size-selected");
			});
			
			<!-- 상품 수량 빼기 -->
			$("#decQuantity").click(function countDown() { 
				var quantity = Number($("#select-quantity").text());
				if(quantity >= 2){
					$("#select-quantity").html(quantity-1);	
				}
				if(quantity == 2){
					$("#countDown").attr("src", "sample_img/ico_decQ_disabled.png");
				}
				
			});
			
			<!-- 상품 수량 증가 -->
			$("#incQuantity").click(function countUp() {
				var quantity = Number($("#select-quantity").text());
				$("#select-quantity").html(quantity+1);
				$("#countDown").attr("src", "sample_img/ico_decQ.png");
			});
			

			
		});
		
		
	</script>


</head>

<body>

	<!-- Navigation -->
	<%@include file="/views/common/header.jsp"%>

	<!-- Page Content -->
	<div class="container" >
		<article class="row">
		
			<div class="col-lg-1" id="detail-img">
				<!-- ajax로 해당 상품 디테일 이미지 생성 -->
			</div>
			
			<div class="col-lg-4">
				<img class="card-img-top img-fluid" id="viewImg" src="${product.img }">

				
				<!--
				<div class="card mt-4">
					<img class="card-img-top img-fluid" id="viewImg" src="${product.img }" alt="">
					<div class="card-body">
					
						<h3 class="card-title">${product.name }</h3>
						<h4>￦${product.price }</h4>
						<p class="card-text">
							${product.content }
						</p>
						<span class="text-warning">&#9733; &#9733; &#9733; &#9733; &#9734;</span> 4.0 stars
				
					</div>
				</div>
				-->
			</div>
			
			<div class="col-lg-7" id="product-info">
				<span class="text-warning">&#9733; &#9733; &#9733; &#9733; &#9734;</span> 4.0 <a href="#" id="rate" onclick="scroll_move()" >상품평 전체 보기</a><br><br>
				<h3>${product.name }</h3><br>
				<h4>￦${product.price }</h4><br>
				<p>${product.content }</p>
				<br>
				<ul class="size-list">
					<li value="XL">XL</li>
					<li value="L">L</li>
					<li value="M">M</li>
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
						<a href="#" onClick="directOrder('${product.num}');">구매하기</a>
					</div>
					<div id="btn_cart">
						<a href="#" onClick="addCart('${product.num}');">장바구니</a>
					</div>
				</div>
			</div>
			

		</article>
		
		<!-- /.card -->
		<div class="card card-outline-secondary my-4">
			<div class="card-header" id="product-reviews">Product reviews</div>
			<div class="card-body">
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Omnis et enim aperiam inventore, similique necessitatibus neque
					non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum.
					Sequi mollitia, necessitatibus quae sint natus.</p>
				<small class="text-muted">Posted by Anonymous on 3/1/17</small>
				<hr>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Omnis et enim aperiam inventore, similique necessitatibus neque
					non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum.
					Sequi mollitia, necessitatibus quae sint natus.</p>
				<small class="text-muted">Posted by Anonymous on 3/1/17</small>
				<hr>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Omnis et enim aperiam inventore, similique necessitatibus neque
					non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum.
					Sequi mollitia, necessitatibus quae sint natus.</p>
				<small class="text-muted">Posted by Anonymous on 3/1/17</small>
				<hr>
				<a href="#" class="btn btn-success">Leave a Review</a>
			</div>
		</div>
		<!-- /.card -->
	
	
	</div>
	
	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your Website 2020</p>
		</div>
		<!-- /.container -->
	</footer>



</body>

</html>
