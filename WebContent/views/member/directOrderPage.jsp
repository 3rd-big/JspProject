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

	<link href="<%=request.getContextPath()%>/resource/vendor/bootstrap/css/orderPageCss.css" rel="stylesheet">
	
	<!-- Bootstrap core JavaScript -->
	<script src="<%=request.getContextPath()%>/resource/vendor/jquery/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<!-- Navigation -->
	<%@include file ="/views/common/header2.jsp" %>

	<!-- Page Content -->
  <div class="container" style="padding-top: 10px;">

    <div class="row">
    
    
     <!-- /.col-lg-9 -->
			<div class="col-lg-8">
			
			<div class="enrollcomponent">
		<form action="/JspProject/JoinController" name="f" method="post">
			<fieldset>
			<div>
				<legend>배송지 정보</legend>
				</div>
							<div class="row clfix">
								<div class="col_head">수취인 이름*</div>
								<div class="col_body">
									<div class="col_row clfix">
										<div class="col clf">
											<input type="text" name="RCIVR_NM" id="RCIVR_NM"
												onkeyup="javascript:fn_checkSpclCh(this);" maxlength="20"
												value="권혁민">
										</div>
									</div>
								</div>
							</div>

							<div class="form-group">
								<label for="InputPwd">휴대전화</label> <input type="text"
									class="form-control" id="phone" name="phone"
									value="멤버에 폰 번호 추가">
							</div>

							<div class="form-group">
					<label for="InputName">이메일 주소</label> <input type="text" class="form-control" id="email" name="email" value=${member.email}>
				</div>
				
				<!-- 주소api 추후 추가 -->
				<div class="form-group">
					<label for="InputAddress">Address</label> <input type="text" class="form-control" id="addr" name="addr" value=${member.addr}>
				</div>
				
				<!-- <div class="form-group">
					<label for="exampleSelect1">Example select</label> <select
						class="form-control" id="exampleSelect1">
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
					</select>
				</div>
				<div class="form-group">
					<label for="exampleSelect2">Example multiple select</label> <select
						multiple="" class="form-control" id="exampleSelect2">
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
					</select>
				</div>
				<div class="form-group">
					<label for="exampleTextarea">Example textarea</label>
					<textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
				</div>
				<div class="form-group">
					<label for="exampleInputFile">File input</label> <input type="file"
						class="form-control-file" id="exampleInputFile"
						aria-describedby="fileHelp"> <small id="fileHelp"
						class="form-text text-muted">This is some placeholder
						block-level help text for the above input. It's a bit lighter and
						easily wraps to a new line.</small>
				</div>
				<fieldset class="form-group">
					<legend>Radio buttons</legend>
					<div class="form-check">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" name="optionsRadios" id="optionsRadios1"
							value="option1" checked=""> Option one is this and
							that—be sure to include why it's great
						</label>
					</div>
					<div class="form-check">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" name="optionsRadios" id="optionsRadios2"
							value="option2"> Option two can be something else and
							selecting it will deselect option one
						</label>
					</div>
					<div class="form-check disabled">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" name="optionsRadios" id="optionsRadios3"
							value="option3" disabled=""> Option three is disabled
						</label>
					</div>
				</fieldset>
				<fieldset class="form-group">
					<legend>Checkboxes</legend>
					<div class="form-check">
						<label class="form-check-label"> <input
							class="form-check-input" type="checkbox" value="" checked="">
							Option one is this and that—be sure to include why it's great
						</label>
					</div>
					<div class="form-check disabled">
						<label class="form-check-label"> <input
							class="form-check-input" type="checkbox" value="" disabled="">
							Option two is disabled
						</label>
					</div>
				</fieldset>
				<fieldset class="form-group">
					<legend>Sliders</legend>
					<label for="customRange1">Example range</label> <input type="range"
						class="custom-range" id="customRange1">
				</fieldset> -->
				<button type="submit" class="btn btn-primary">가입하기</button>
			</fieldset>
		</form>
	</div>
			
			
			</div>
			
			


			<div class="col-lg-4">

				<div class="prods_info" id="test_box" style="top: 58px;">
					<div class="prodlist">
						<div class="box last container" style="border: outset;">
							<a
								href="<%=request.getContextPath()%>/DetailController?num=${productInfo.p_num}"
								target="_blank">
								<div class="img">
									<img src="${productInfo.prod_img }" class="prd" width="60"
										height="60">
								</div>
							</a>
							<!-- 부가상품 -->
							<div class="info">
								<div class="tit">
									<a
										href="<%=request.getContextPath()%>/DetailController?num=${productInfo.p_num}"
										target="_blank" class="">${productInfo.prod_name }</a>
								</div>

								<div class="details">사이즈: ${productInfo.p_size } / 수량 :
									${productInfo.o_quantity }</div>
								<div class="price-container">
									<span class="prc">${productInfo.total_price }<span
										class="won">원</span></span>
								</div>
							</div>
						</div>
					</div>
					<!-- //prodlist -->
					<div class="total_amount">총 주문 상품 : 1개</div>
					<div class="price_box">
						<div class="box clfix">
							<strong>총 주문 가격</strong>
							<div class="price-container">
								<span class="prc">${productInfo.total_price }<span
									class="won">원</span></span>
							</div>
						</div>
						<div class="box clfix">
							<strong>적립금 사용</strong>
							<div class="price-container">
								<span class="prc sale">'ajax로 적립금 구현'<span class="won">원</span></span>
							</div>
						</div>
						<div class="box clfix" style="border-bottom-width: 0;">
							<strong>할인 후 금액</strong>
							<div class="price-container">
								<span class="prc sale"><span
									id="TOTAL_DISCOUNT_AMT_TEMP_VIEW">0</span><span class="won">원</span></span>
							</div>
						</div>



						<div class="box deliv clfix">
							<strong>배송비 <span class="deliv_tooltip"> <span
									class="spt_bg"></span> <span class="tooltip-layer">
										<div class="arrow spt_bg"></div> <span id="chgContents">
											<div class="tooltip-contents"
												style="width: 230px; line-height: 19px;">5만원 이상 구매시
												무료배송 (도서 산간 지역은 추가 배송비 발생) " ajax로 구현 "</div>
									</span>
								</span>
							</span>
							</strong>
							<div class="price-container">
								<span class="prc" id="viewDlvFee"> <span class="won">원</span></span>
							</div>
						</div>

						<!-- 무료배송비 -->
						<div class="box total_p clfix">
							<strong>총 결제금액</strong>
							<div class="price-container">
								<span class="prc" id="TOTAL_PAY_AMT_STR">${productInfo.total_price }<span
									class="won">원</span></span>


								<p class="point">
									예상 적립 포인트 <strong><span id="preSaveRate">${preSave_point }</span>point
										(5%)</strong>
								</p>
							</div>
						</div>
					</div>
					<!-- //price_box -->
				</div>

			</div>


			<!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    	<%@include file="/views/common/footer2.jsp"%>
    
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>