<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap core CSS -->
<link
	href="<%=request.getContextPath()%>/resource/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">


<!-- Bootstrap core JavaScript -->
<%-- <script src="<%=request.getContextPath()%>/resource/vendor/jquery/jquery.min.js"></script> --%>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Add the slick-theme.css if you want default styling -->
<link rel="stylesheet" type="text/css"
	href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<!-- Add the slick-theme.css if you want default styling -->
<link rel="stylesheet" type="text/css"
	href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />



<style type="text/css">
img {
	max-width: 100%;
}
</style>

<style type="text/css">
body {
	margin: 0px;
	padding: 0px;
}

#main-header {
	position: relative;
	height: 40px;
	background-color: #f5f5f5;
}

#main-gnb-notice {
	position: absolute;
	top: 50%;
	left: 20%;
	transform: translate(-50%, -50%);
	font: bold 12px Dotum;
}

#main-gnb-login {
	position: absolute;
	top: 50%;
	right: 5%;
	transform: translate(-50%, -50%);
	font: bold 12px Dotum;
}

#main-gnb-login>ul {
	overflow: hidden;
}

#main-gnb-login>ul>li {
	float: left;
	display: inline;
	font: bold;
	padding-top: 16px;
}

#main-gnb-login>ul>li>a {
	display: block;
	padding: 2px 10px;
	color: black;
	text-decoration: none;
}

#main-logo-header {
	position: relative;
	height: 120px;
}

.logo {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.toggle {
	position: absolute;
	top: 50%;
	left: 20%;
	transform: translate(-50%, -50%);
}

.toggle div {
	margin: 3px;
	transition: all 0.3s ease;
	width: 23px;
	height: 3px;
	background: black;
}

.cart-img {
	position: absolute;
	top: 50%;
	right: 25%;
	transform: translate(-50%, -50%);
}

.cart-img a {
	color: #242424;
}

#numProdInTheCart {
	left: -10px;
	z-index: 10001;
}

.person-img {
	position: absolute;
	top: 50%;
	right: 20%;
	transform: translate(-50%, -50%);
}

.person-img a {
	color: #242424;
}

.search-img {
	position: absolute;
	top: 50%;
	left: 25%;
	transform: translate(-50%, -50%);
}

.search-img a {
	color: #242424;
}

.searchView {
	height: 100px;
	background-color: #bbdefb;
	display: none;
}

.scrollTopBtn {
	position: fixed;
	bottom: -100%;
	right: 5%;
	color: #808080;
}

.scrollTopBtn.visible {
	position: fixed;
	bottom: 10%;
	right: 5%;
	z-index: 10000;
	color: #808080;
}

.main-gnb-product {
	position: relative;
	height: 40px;
	background-color: yellow;
}

.main-gnb-product>ul {
	position: absolute;
	overflow: hidden;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.main-gnb-product>ul>li {
	float: left;
	display: inline;
	font: bold 18px;
}

.main-gnb-product>ul>li>a {
	display: block;
	padding: 2px 10px;
	color: black;
	text-decoration: none;
}

.page-header {
	background-color: white;
	text-align: center;
	height: 50px;
	width: 100%;
	min-width: 960px;
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.25);
	padding: 10px 0px;
}

.category-header {
	text-align: center;
}

.category-header>a {
	color: black;
	text-decoration: none;
}

.category-header>a:nth-child(2) {
	margin-left: 20px;
}

.page-header-clone {
	background-color: white;
	text-align: center;
	position: fixed;
	top: -100%;
	height: 50px;
	width: 100%;
	min-width: 960px;
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.25);
	padding: 10px 0px;
}

.page-header-clone.visible {
	position: fixed;
	top: 0;
	z-index: 9999;
}

#ticker {
	height: 20px;
	text-decoration-line: underline;
	line-height :150%;
	overflow: hidden;
	align: center;
	text-align: center;
}

</style>

<script type="text/javascript">
	$(document)
			.ready(
					function() {

						var sessionId = "${sessionScope.id}";

						$
								.ajax({
									url : "${pageContext.request.contextPath }/AllCartListCountController",
									type : "GET",
									async : false,
									data : "m_id=" + sessionId,
									success : function(result) {

										if (result != "0") {
											var cartTopOffset = $('.cart-img')
													.offset().top;
											var cartLeftOffset = $('.cart-img')
													.offset().left;
											$('#numProdInTheCart').css('top',
													cartTopOffset);
											$('#numProdInTheCart').css('left',
													cartLeftOffset);
											$('#numProdInTheCart').html(result);
										}

									}
								});

						var wind = $(window), $header = $('.page-header'), $headerClone = $header
								.contents().clone(), $headerCloneContainer = $('<div class="page-header-clone"></div>'), $threshold = $header
								.offset().top
								+ $header.outerHeight();

						$headerCloneContainer.append($headerClone);
						$headerCloneContainer.prepend($('.toggle').clone());
						$headerCloneContainer.prepend($('.search-img').clone());
						$headerCloneContainer.append($('.cart-img').clone());
						$headerCloneContainer.append($('.person-img').clone());

						$headerCloneContainer.appendTo('header');

						wind.scroll(function() {
							if ($(this).scrollTop() >= $threshold) {
								$headerCloneContainer.addClass('visible');
								$('.scrollTopBtn').addClass('visible');
							} else {
								$headerCloneContainer.removeClass('visible');
								$('.scrollTopBtn').removeClass('visible');
							}
						});

						$('a.searchBtn').click(function() {
							$('.searchView').slideToggle();
						});

						$('#scrollTopBtn').click(function scroll_move() {
							var offset = $('#main-gnb-notice').offset();
							$('html').animate({
								scrollTop : offset.top
							}, 300);
						});

					});

	//ticker 전광판
	jQuery(function($) {
		var ticker = function() {
			timer = setTimeout(function() {
				$('#ticker li:first').animate({
					marginTop : '-20px'
				}, 400, function() {
					$(this).detach().appendTo('ul#ticker').removeAttr('style');
				});
				ticker();
			}, 4000);
		};
		// 이전글 보기
		$(document).on('click', '.prev', function() {
			$('#ticker li:last').hide().prependTo($('#ticker')).slideDown();
			clearTimeout(timer);
			ticker();
			if ($('.pause').text() == 'Unpause') {
				tickerUnpause();
			}
			;
		});

		// 다음글 보기
		// 클릭할 경우 setTimeout 을 clearTimeout 해줘야 하는데 어떻게 하지..
		// timer 를 전연변수보다 지역변수 사용하는게 나을 것 같은데 방법을 모르겠네요.
		$(document).on('click', '.next', function() {
			$('#ticker li:first').animate({
				marginTop : '-20px'
			}, 400, function() {
				$(this).detach().appendTo('ul#ticker').removeAttr('style');
			});
			clearTimeout(timer);
			ticker();
			//3 함수와 연계 시작
			if ($('.pause').text() == 'Unpause') {
				tickerUnpause();
			}
			;
		});

		// 일시정지 기능
		var tickerUnpause = function() {
			$('.pause').text('Pause').removeClass('unpause');
		};

		// 3. 재생정지 함수 시작. 2와 기능 동일함.
		var tickerpause = function() {
			$('.pause').click(function() {
				$this = $(this);
				if ($this.text() == 'Pause') {
					$this.text('Unpause').toggleClass('unpause');
					clearTimeout(timer);
				} else {
					tickerUnpause();
					ticker(); // 이 코드를 넣어줘야 일시정지 후 클릭시 재생이 됨
				}
			});
		};
		tickerpause();

		// 마우스를 올렸을 때 재생 정지하기
		var tickerover = function(event) {
			$('#ticker').mouseover(function() {
				clearTimeout(timer);
			});
			$('#ticker').mouseout(function() {
				ticker();
			});
		};
		tickerover(); // 4 끝
		ticker();
		return false;
	});
</script>

</head>
<body>
	<load target="assets/js/jquery.vticker.js" type="body" />
	<header>

		<div id="main-header">
			<div id="main-gnb-notice">
				<svg width="3em" height="3em" viewBox="0 0 16 16"
					class="bi bi-volume-up" fill="currentColor"
					xmlns="http://www.w3.org/2000/svg">
					<path fill-rule="evenodd"
						d="M6.717 3.55A.5.5 0 0 1 7 4v8a.5.5 0 0 1-.812.39L3.825 10.5H1.5A.5.5 0 0 1 1 10V6a.5.5 0 0 1 .5-.5h2.325l2.363-1.89a.5.5 0 0 1 .529-.06zM6 5.04L4.312 6.39A.5.5 0 0 1 4 6.5H2v3h2a.5.5 0 0 1 .312.11L6 10.96V5.04z" />
					<path
						d="M11.536 14.01A8.473 8.473 0 0 0 14.026 8a8.473 8.473 0 0 0-2.49-6.01l-.708.707A7.476 7.476 0 0 1 13.025 8c0 2.071-.84 3.946-2.197 5.303l.708.707z" />
					<path
						d="M10.121 12.596A6.48 6.48 0 0 0 12.025 8a6.48 6.48 0 0 0-1.904-4.596l-.707.707A5.483 5.483 0 0 1 11.025 8a5.483 5.483 0 0 1-1.61 3.89l.706.706z" />
					<path
						d="M8.707 11.182A4.486 4.486 0 0 0 10.025 8a4.486 4.486 0 0 0-1.318-3.182L8 5.525A3.489 3.489 0 0 1 9.025 8 3.49 3.49 0 0 1 8 10.475l.707.707z" />
				</svg>
			</div>
			<!--  공지사항  슬라이드   -->
			<div id="main-gnb-notice" style="padding-top : 10px; margin: 5px 50px;">
				<div class="ticker_wrap">
					<ul id="ticker">
						<div>공지사항1</div>
						<div>공지사항2</div>
						<div>공지사항3</div>
					</ul>
				</div>
			</div>

		</div>



		<!-- 비로그인 상태 -->
		<c:if test="${empty sessionScope.id }">
			<div id="main-gnb-login">
				<ul>
					<li><a
						href="${pageContext.request.contextPath }/ListNoticeController?page=1">공지사항</a></li>
					<li><a
						href="<%=request.getContextPath()%>/views/member/login.jsp">주문조회</a></li>
					<li><a
						href="<%=request.getContextPath()%>/views/member/signup.jsp">회원가입</a></li>
					<li><a
						href="<%=request.getContextPath()%>/views/member/login.jsp">로그인</a></li>
				</ul>
			</div>
		</c:if>


		<!-- 일반사용자 로그인 상태 -->
		<c:if test="${sessionScope.memberType == 1 }">
			<div id="main-gnb-login">
				<ul>
					<li><a
						href="${pageContext.request.contextPath }/ListNoticeController?page=1">공지사항</a></li>
					<li><a
						href="${pageContext.request.contextPath }/OrderlistController?o_state=1">주문조회</a></li>
					<li><a
						href="${pageContext.request.contextPath }/MypageController?o_state=1">마이페이지</a></li>
					<li><a href="<%=request.getContextPath()%>/LogoutController">로그아웃</a></li>
				</ul>
			</div>
		</c:if>


		<!-- 관리자 로그인 상태 -->
		<c:if test="${sessionScope.memberType == 0 }">
			<div id="main-gnb-login">
				<ul>
					<li><a
						href="${pageContext.request.contextPath }/ListNoticeController?page=1">공지사항</a></li>
					<li><a
						href="<%=request.getContextPath()%>/ProductAllListController">관리자페이지</a></li>
					<li><a href="<%=request.getContextPath()%>/LogoutController">로그아웃</a></li>
				</ul>
			</div>

		</c:if>



		<div id="main-logo-header">

			<div class="toggle">
				<div class="line-1"></div>
				<div class="line-2"></div>
				<div class="line-3"></div>
			</div>


			<div class="logo">
				<a href="<%=request.getContextPath()%>/MainListController"> <img
					src="<%=request.getContextPath()%>/sample_img/Free_Sample_By_Wix.png" />
				</a>
			</div>


			<div class="cart-img">
				<c:if test="${sessionScope.memberType == 1 }">
					<a
						href="${pageContext.request.contextPath }/OrderlistController?o_state=0">
				</c:if>
				<c:if test="${empty sessionScope.memberType}">
					<a href="<%=request.getContextPath()%>/views/member/login.jsp">
				</c:if>
				<svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-cart"
					fill="currentColor" xmlns="http://www.w3.org/2000/svg">
						<path fill-rule="evenodd"
						d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm7 0a1 1 0 1 0 0 2 1 1 0 0 0 0-2z" />
					</svg>
				</a> <span class="badge badge-pill badge-warning" id="numProdInTheCart"></span>
			</div>


			<div class="person-img">
				<c:if test="${sessionScope.memberType == 1 }">
					<a
						href="${pageContext.request.contextPath }/MypageController?o_state=1">
				</c:if>
				<c:if test="${empty sessionScope.memberType}">
					<a href="<%=request.getContextPath()%>/views/member/login.jsp">
				</c:if>
				<svg width="2em" height="2em" viewBox="0 0 16 16"
					class="bi bi-person" fill="currentColor"
					xmlns="http://www.w3.org/2000/svg">
					  <path fill-rule="evenodd"
						d="M10 5a2 2 0 1 1-4 0 2 2 0 0 1 4 0zM8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm6 5c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z" />
					</svg>
				</a>
			</div>


			<div class="search-img">
				<a href="#" class="searchBtn"> <svg width="2em" height="2em"
						viewBox="0 0 16 16" class="bi bi-search" fill="currentColor"
						xmlns="http://www.w3.org/2000/svg">
					<path fill-rule="evenodd"
							d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z" />
					<path fill-rule="evenodd"
							d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z" />
				</svg>
				</a>
				<div class="searchView"></div>
			</div>

		</div>




		<div class="page-header border-top">
			<div class="category-header">
				<a
					href="<%=request.getContextPath()%>/CategoryController?category=top&page=1"
					style="text-decoration: none;">Top</a> <a
					href="<%=request.getContextPath()%>/CategoryController?category=bottom&page=1"
					style="text-decoration: none;">Bottom</a>
			</div>
		</div>


		<a href="#" class="scrollTopBtn" id="scrollTopBtn"
			onclick="scroll_move()"> <svg width="2em" height="2em"
				viewBox="0 0 16 16" class="bi bi-caret-up-square-fill"
				fill="currentColor" xmlns="http://www.w3.org/2000/svg">
	  			<path fill-rule="evenodd"
					d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm4 9a.5.5 0 0 1-.374-.832l4-4.5a.5.5 0 0 1 .748 0l4 4.5A.5.5 0 0 1 12 11H4z" />
			</svg>
		</a>
	</header>
	<script type="text/javascript"
		src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
</body>
</html>