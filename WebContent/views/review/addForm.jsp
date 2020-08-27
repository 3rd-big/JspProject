<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.ProductVO" %>
  <%@page import="model.ProductOrderVO, model.ReviewVO" %>
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
<style type="text/css">
.starR1{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat -52px 0;
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.starR2{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.starR1.on{background-position:0 0;}
.starR2.on{background-position:-15px 0;}

</style>



</head>
<body>
	<!-- Navigation -->
	<%@include file ="/views/common/header.jsp" %>
	<!-- Page Container -->
	<!-- 카테고리 -->
	<c:if test="${not empty sessionScope.id }">
	
	
		<div class="row2" >
	
	      <div class="col-lg-3">
	        <h1 class="my-4">My Page</h1>
	        <div class="list-group">
	        	<a href="${pageContext.request.contextPath }/OrderlistController?o_state=0" class="list-group-item">주문조회</a>
	        	<a href="#" class="list-group-item">내가 쓴 리뷰 관리</a>
	          <a href="${pageContext.request.contextPath }/SearchController" class="list-group-item ">내 정보 수정</a>
	          
	          
	        </div>
	      </div>
	    </div>
		
		<section class = "rightcontent">
			<div class="card mb-3">
				<h3 class="card-header">상품평 작성</h3>
				<div class="card-body">
					<h5 class="card-title">상품의 후기를 적어주세요 </h5>
				</div>
				<img style="height: 200px; width: 100%; display: block;"
					src="${r.img }"
					alt="Card image">
				<div class="card-body">
					<input type="text" class="card-text" id="r_content" name="r_content">
				</div>
				<ul class="list-group list-group-flush">
					<li class="list-group-item">
						<div class="starRev">
						  <span class="starR1 on">별1_왼쪽</span>
						  <span class="starR2">별1_오른쪽</span>
						  <span class="starR1">별2_왼쪽</span>
						  <span class="starR2">별2_오른쪽</span>
						  <span class="starR1">별3_왼쪽</span>
						  <span class="starR2">별3_오른쪽</span>
						  <span class="starR1">별4_왼쪽</span>
						  <span class="starR2">별4_오른쪽</span>
						  <span class="starR1">별5_왼쪽</span>
						  <span class="starR2">별5_오른쪽</span>
						</div>
					
					
					</li>

				</ul>
				
				<div class="card-footer text-muted">
					등록 버튼
				</div>
			</div>
			


		</section>
	

	</c:if>
	<script type="text/javascript">


		$('.starRev span').click(function(){
		  $(this).parent().children('span').removeClass('on');
		  $(this).addClass('on').prevAll('span').addClass('on');
		  return false;
		});


	</script>


	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2020</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>