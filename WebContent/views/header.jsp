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
	
	<title>Shop Homepage - Start Bootstrap Template</title>
	
	  <!-- Bootstrap core CSS -->
  <link href="<%=request.getContextPath()%>/resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="<%=request.getContextPath()%>/resource/css/shop-item.css" rel="stylesheet">

</head>


<body>

<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">

		<div class="logo">
			<img
				src="https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png" width="100px", height="50px">
		</div>

		<!-- top-navbar -->
		<div class="container" style="flex-flow: column; max-width: none;">
			<!-- top-navbar -->
			<div class="container" id="top-navbar" style="max-width: -webkit-fill-available;">
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarResponsive" aria-controls="navbarResponsive"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarResponsive">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active"><a class="nav-link" href="#">주문조회
								<span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#">회원가입</a></li>
						<li class="nav-item"><a class="nav-link" href="#">로그인</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Contact</a>
						</li>

						<!-- 네비게이션 검색창 -->



					</ul>
				</div>
			</div>

			<!-- bottom-navbar -->
			<div class="container" id="bottom-navbar" style="max-width: -webkit-fill-available;">


				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarResponsive" aria-controls="navbarResponsive"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarResponsive">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item active"><a class="nav-link" href="#">Home
								<span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#">About</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Services</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">Contact</a>
						</li>
					</ul>

					<div class="collapse navbar-collapse" id="navbarResponsive">
						<!-- 네비게이션 검색창 -->
						<ul class="navbar-nav ml-auto">
							<li class="nav-item">
								<div class="search_area">
									<div class="search">
										<form id="frmSrchTop" name="frmSrchTop" method="post"
											onsubmit="return false;" action="">
											<input type="text" name="S_PROD_NM_TOP" id="S_PROD_NM_TOP"
												class="sh" autocomplete="off"
												onfocus="this.value='';document.getElementById('S_SEARCH_WORDS_URL').value='';"
												onmousedown="dqtop_charLen(this.value);"
												onkeypress="keyDownTop('1',event);"
												onkeydown="keyDownTop('1',event);"> <a href="#"
												onclick="fn_search_top();"
												onmousedown="javascript:fn_trkClickTrace('^최상단^검색');"
												class="spt_bg btn">검색</a>
										</form>
									</div>
								</div>
							</li>

							<div class="market abtest">
								<script type="text/javascript">
									if (V_HD_MEM_CART_CNT != "null"
											&& V_HD_MEM_CART_CNT != "") { /* 로그인상태인 경우 */
										if (V_HD_MEM_CART_CNT > 0) {
											document
													.write("<a href='javascript:void(0);fn_goCart();' onmousedown='javascript:fn_trkClickTrace(\"^최상단^장바구니\");'><div><img src='//image.adidas.co.kr/images/adidas/common/cart_DT.png' alt='''></div><strong>"
															+ V_HD_MEM_CART_CNT
															+ "</strong></a>");
										} else {
											document
													.write("<a href='javascript:fn_logIn(7);'><div><img src='//image.adidas.co.kr/images/adidas/common/cart_DT.png' alt='''></div><strong>0</strong></a>");
											document
													.write("<div class='no_data_layer' style='display:none;'><span class='spt_bg'></span>장바구니가 비어있습니다.</div>");
										}
									} else {
										document
												.write("<a href='javascript:fn_logIn(7);'><div><img src='//image.adidas.co.kr/images/adidas/common/cart_DT.png' alt='''></div></a>");
										document
												.write("<div class='no_data_layer' style='display:none;'><span class='spt_bg'></span>장바구니가 비어있습니다.</div>");
									}
								</script>
								<a href="javascript:fn_logIn(7);">
									<div>
										<img
											src="//image.adidas.co.kr/images/adidas/common/cart_DT.png"
											alt=""'="">
									</div>
								</a>
								<div class="no_data_layer" style="display: none;">
									<span class="spt_bg"></span>장바구니가 비어있습니다.
								</div>
							</div>
						</ul>
					</div>
				</div>
			</div>

		</div>

	</nav>


</body>
</html>