<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.ProductOrderVO, model.ProductSizeVO"%>
<%@page import="model.MemberVO, model.ProductVO, model.ReviewVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/views/review/star-rating/star-rating/css/star-rating.css"
	media="all" type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/views/review/star-rating/star-rating/css/themes/krajee-fa/theme.css"
	media="all" type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/views/review/star-rating/star-rating/css/themes/krajee-svg/theme.css"
	media="all" type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/views/review/star-rating/star-rating/css/themes/krajee-uni/theme.css"
	media="all" type="text/css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath }/views/review/star-rating/star-rating/js/star-rating.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath }/views/review/star-rating/star-rating/js/themes/krajee-fa/theme.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath }/views/review/star-rating/star-rating/js/themes/krajee-svg/theme.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath }/views/review/star-rating/star-rating/js/themes/krajee-uni/theme.js"
	type="text/javascript"></script>

<!-- 업로드 사진 미리보기 -->

<script type="text/javascript">

	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#blah').attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
	

	
</script>
<style type="text/css">
.uploadhidden {
	font-family: "campton", "Apple SD Gothic Neo", NanumBarunGothic,
		"나눔바른고딕", Malgun Gothic, "맑은 고딕", dotum, sans-serif;
	border-radius: 0;
	background: transparent;
	appearance: none;
	overflow: hidden;
	position: absolute;
	width: 1px;
	height: 1px;
	margin: -1px;
	padding: 0;
	border: 0;
	clip: rect(0, 0, 0, 0);
	border-radius: 0;
	background: transparent;
	appearance: none;
}

/* 파일 필드 숨기기 */
/* .filebox input[type="file"] {  
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
    clip:rect(0,0,0,0);
    border: 0;
}
 */
</style>
</head>
<body>

	<!------ Include the above in your HEAD tag ---------->

<div class="container">
	<div class="row">
		<h2 style="text-align: center">상품평 작성</h2>
	<br>
	<table width="100%" border="0">
		<div class="col-md-9 col-md-offset-0">
			<tr>
			<td width="77%">
			<div class="">
				<form class="form-horizontal" action="${pageContext.request.contextPath }/AddReviewController?p_num=<%=request.getParameter("p_num") %>"	<%-- 태수 --%>   
				enctype="multipart/form-data" method="post" >
					<fieldset>

					<!-- Name input-->
					<!-- <div class="form-group">
						<label class="col-md-3 control-label" for="name">Full
							Name</label>
						<div class="col-md-9">
							<input id="name" name="name" type="text"
								placeholder="Your name" class="form-control">
						</div>
					</div> -->

				<!-- Rating -->
				<div class="form-group">
					<label class="col-md-3 control-label" for="rating">Your rating</label>
					<form>
						<input type="text" name="rate" class="rating rating-loading"
							data-size="md" title=""> <br>
					</form>
				</div>


				<!-- Message body -->
				<div class="form-group">
					<label class="col-md-3 control-label" for="message">Your message</label>
					<div class="col-md-9">
						<textarea class="form-control" id="message" name="message"
							placeholder="Please enter your feedback here..." rows="5"></textarea>
					</div>
				</div>

				<!-- image input -->
				<div class="form-group">
					<label class="col-md-3 control-label" for="image">사진첨부</label>
					<div class="col-md-9">
						<!-- <label for="cma_file">사진첨부</label> -->
						<!-- <form id="form1" runat="server">  태수 --> 
							<input type="file" name="r_img" onchange="readURL(this);">
							<img
								style="height: 75px; border: 1px solid #000; margin: 5px"
								id="blah" src="#" alt="" />
						<!-- </form> -->

					</div>
				</div>

				<div class="form-group">
					<div class="col-md-12 text-center">
						<button type="submit" class="btn btn-primary btn-md" onclick="window.close();">Submit</button>
						<button type="reset" class="btn btn-default btn-md">Clear</button>
					</div>
				</div>
				</td>


				</fieldset>

				</form>
			</tr>
	</table>



</div>
</body>
<script>
    $(document).on('ready', function () {
        $('.kv-gly-star').rating({
            containerClass: 'is-star'
        });
        $('.kv-gly-heart').rating({
            containerClass: 'is-heart',
            defaultCaption: '{rating} hearts',
            starCaptions: function (rating) {
                return rating == 1 ? 'One heart' : rating + ' hearts';
            },
            filledStar: '<i class="glyphicon glyphicon-heart"></i>',
            emptyStar: '<i class="glyphicon glyphicon-heart-empty"></i>'
        });
        $('.kv-fa').rating({
            theme: 'krajee-fa',
            filledStar: '<i class="fa fa-star"></i>',
            emptyStar: '<i class="fa fa-star-o"></i>'
        });
        $('.kv-fa-heart').rating({
            defaultCaption: '{rating} hearts',
            starCaptions: function (rating) {
                return rating == 1 ? 'One heart' : rating + ' hearts';
            },
            theme: 'krajee-fa',
            filledStar: '<i class="fa fa-heart"></i>',
            emptyStar: '<i class="fa fa-heart-o"></i>'
        });
        $('.kv-uni-star').rating({
            theme: 'krajee-uni',
            filledStar: '&#x2605;',
            emptyStar: '&#x2606;'
        });
        $('.kv-uni-rook').rating({
            theme: 'krajee-uni',
            defaultCaption: '{rating} rooks',
            starCaptions: function (rating) {
                return rating == 1 ? 'One rook' : rating + ' rooks';
            },
            filledStar: '&#9820;',
            emptyStar: '&#9814;'
        });
        $('.kv-svg').rating({
            theme: 'krajee-svg',
            filledStar: '<span class="krajee-icon krajee-icon-star"></span>',
            emptyStar: '<span class="krajee-icon krajee-icon-star"></span>'
        });
        $('.kv-svg-heart').rating({
            theme: 'krajee-svg',
            filledStar: '<span class="krajee-icon krajee-icon-heart"></span>',
            emptyStar: '<span class="krajee-icon krajee-icon-heart"></span>',
            defaultCaption: '{rating} hearts',
            starCaptions: function (rating) {
                return rating == 1 ? 'One heart' : rating + ' hearts';
            },
            containerClass: 'is-heart'
        });

        $('.rating,.kv-gly-star,.kv-gly-heart,.kv-uni-star,.kv-uni-rook,.kv-fa,.kv-fa-heart,.kv-svg,.kv-svg-heart').on(
                'change', function () {
                    console.log('Rating selected: ' + $(this).val());
                });
    });
</script>
</html>