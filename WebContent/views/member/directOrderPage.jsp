<div id="container_r" style="background: #fff;">
		<div id="contents_r">

			<form name="frm" id="frm" method="post" action="">
				<input type="hidden" name="command" id="command" value="">
				<input type="hidden" name="SITE_CD" id="SITE_CD" value="1">
				<input type="hidden" name="SITE_TYPE" id="SITE_TYPE" value="01">
				<input type="hidden" name="ORDER_AMT" id="ORDER_AMT">
				<input type="hidden" name="PAYMT_AMT" id="PAYMT_AMT">
				<input type="hidden" name="EMAIL_RET_YN" id="EMAIL_RET_YN" value="N">
				<input type="hidden" name="ORDER_TYPE" id="ORDER_TYPE" value="01">
				<input type="hidden" name="ORDER_ST" id="ORDER_ST" value="01">
				<input type="hidden" name="SMS_RET_YN" id="SMS_RET_YN" value="Y">
				<input type="hidden" name="CART_NOS" id="CART_NOS" value="">
				<input type="hidden" name="MEM_DIVI" id="MEM_DIVI" value="01">
				<input type="hidden" name="SETL_YN" id="SETL_YN" value="N">
				<input type="hidden" name="SALES_YN" id="SALES_YN" value="N">
				<input type="hidden" name="PAYMT_TYPE" id="PAYMT_TYPE" value="07">
				<input type="hidden" name="PAYMT_ST" id="PAYMT_ST" value="02">
				<input type="hidden" name="CPON_PUBL_IDS" id="CPON_PUBL_IDS" value="">
				<input type="hidden" name="DLIVY_CPON_PUBL_ID" id="DLIVY_CPON_PUBL_ID" value="">
				<input type="hidden" name="DLIVY_FEE_CPON_AMT" id="DLIVY_FEE_CPON_AMT" value="0">
				<input type="hidden" name="TITLR_PROD_NM" id="TITLR_PROD_NM" value="[Men's Originals] 제트엑스 2K 부스트">
				<input type="hidden" name="ESCRW_YN" id="ESCRW_YN" value="">
				<input type="hidden" name="SCRTNO" id="SCRTNO" value="">
				<input type="hidden" name="SPST_ID" id="SPST_ID" value="">
				<input type="hidden" name="SRCH_NM" id="SRCH_NM" value="">

				<input type="hidden" name="QUICK_DLIVY_YN" id="QUICK_DLIVY_YN" value="">

				<input type="hidden" name="CHECK_KEY" id="CHECK_KEY" value="93402813">
				<input type="hidden" name="PAY_GB" id="PAY_GB" value="01"><!-- PG에서 받은 정보 -->
				<input type="hidden" name="ORDER_NO" id="ORDER_NO" value=""> <!-- 주문번호 -->
				<input type="hidden" name="PG_CD" id="PG_CD" value="01"> <!-- PG코드 -->
				<input type="hidden" name="PG_STORE_ID" id="PG_STORE_ID" value=""> <!-- mid -->
				<input type="hidden" name="PG_STORE_KEY" id="PG_STORE_KEY" value=""> <!-- null -->
				<input type="hidden" name="PG_ACPT_NO" id="PG_ACPT_NO" value=""> <!-- PG tid(승인번호) -->
				<input type="hidden" name="PAYMT_DT" id="PAYMT_DT" value="">

				<!-- 카드결제 -->
				<input type="hidden" name="CARD_CD" id="CARD_CD" value="">
				<input type="hidden" name="CARD_TYPE" id="CARD_TYPE" value="">
				<input type="hidden" name="CARD_NO" id="CARD_NO" value="">
				<input type="hidden" name="MIP_MONTH" id="MIP_MONTH" value="">
				<input type="hidden" name="NOINT_YN" id="NOINT_YN" value="">

				<!-- kpay 결제 -->
				<input type="hidden" name="CARD_PAYMT_TYPE" id="CARD_PAYMT_TYPE" value="01">

				<!-- 계좌이체 -->
				<input type="hidden" name="BANK_CD" id="BANK_CD" value="">

				<!-- 계좌이체 현금영수증 -->
				<input type="hidden" name="CASH_RCPT_YN" id="CASH_RCPT_YN" value="">
				<input type="hidden" name="CASH_RECPT_TYPE" id="CASH_RECPT_TYPE" value=""> <!-- (0 - 소득공제용, 1 - 지출증빙용) -->

				<input type="hidden" name="CASH_RECPT_CRT_DIVI" id="CASH_RECPT_CRT_DIVI" value=""> <!-- 현금영수증 인증구분 (10:휴대폰번호, 20:주민등록번호, 30:사업자번호) -->
				<input type="hidden" name="CASH_RECPT_CRT_NO" id="CASH_RECPT_CRT_NO" value=""> <!-- 현금영수증 인증번호(휴대폰번호,주민등록번호,사업자번호,자진발급번호) -->

				<input type="hidden" name="MEM_NO" id="MEM_NO" value="00158837361">

				<!-- 161108 -->
				<input type="hidden" name="LST_PAYMT_USE_YN" id="LST_PAYMT_USE_YN" value="Y">

				<input type="hidden" name="PAY_CARD_CD" id="PAY_CARD_CD">  <!-- 결제카드 -->
				<input type="hidden" name="PAY_CARD_QTA" id="PAY_CARD_QTA">  <!-- 할부개월 -->

				<input type="hidden" name="EMPLOYEE_CPON_YN" id="EMPLOYEE_CPON_YN" value="N">
				<input type="hidden" name="empLoyeeMallIpChk" id="empLoyeeMallIpChk" value="N">

				<input type="hidden" name="B2B_ORDER_YN" id="B2B_ORDER_YN" value="N">

				<input type="hidden" name="EASY_PAYMENT_CD" id="EASY_PAYMENT_CD" value="">
				<input type="hidden" name="npayUseYn" id="npayUseYn" value="Y">

				<div class="payment-main">
					<h2 class="blind">주문서 작성</h2>
					<div class="contents">
						<div class="payment_wrap">
							<h3>배송지 정보</h3>
							<div class="delivery_info">
								<div class="for_member">

									<div class="address_util">
										<div id="selAddr" class="selectbox-ctm size_shoes" data-value="addr_option1">
											<a href="javascript:void(0)">기본주소</a>
											<div class="arrow spt_bg"></div>
											<div class="select-contents">
												<ul>
													<li data-option-value="addr_option1" class="selected"><a href="javascript:void(0)" id="addr0" onclick="fn_changeDlivy(0);">기본주소</a></li>

													<li data-option-value="addr_option2"><a href="javascript:fn_changeDlivy(1);">최근 배송지1</a></li>
																<script type="text/javascript">
																	dlivyList[1] = {
																		"recvNm" : "권혁민",
																		"tel" : "",
																		"mob" : "01048900172",
																		"zip" : "12102",
																		"addr" : "경기도 남양주시 별내5로 81",
																		"addr_ji" : "경기도 남양주시 별내동 1072 남양주 별내 스위첸 아파트",
																		"dtlAddr" : "(별내동, 남양주 별내 스위첸 아파트) 3104동 2203호",
																		"sido" : "경기",
																		"gun" : "남양주시",
																		"dong" : "별내동",
																		"delvya" : "",
																		"nm_doro" : "별내5로",
																		"num_bldg" : "4136011100103940002000001"
																	};
																</script>
																<li data-option-value="addr_option3"><a href="javascript:fn_changeDlivy(2);">최근 배송지2</a></li>
																<script type="text/javascript">
																	dlivyList[2] = {
																		"recvNm" : "권혁민",
																		"tel" : "",
																		"mob" : "01088870172",
																		"zip" : "12102",
																		"addr" : "경기도 남양주시 별내5로 81",
																		"addr_ji" : "경기도 남양주시 별내동 1072 남양주 별내 스위첸 아파트",
																		"dtlAddr" : "(별내동, 남양주 별내 스위첸 아파트) 3104동 2203호",
																		"sido" : "경기",
																		"gun" : "남양주시",
																		"dong" : "별내동",
																		"delvya" : "",
																		"nm_doro" : "별내5로",
																		"num_bldg" : "4136011100103940002000001"
																	};
																</script>
																</ul>
											</div>
										</div>
										<!-- //selectbox-ctm -->
										<a href="javascript:adRecentDeliveryPop();" class="btn-ctm btn-lgray"><span>배송지 관리</span></a>
									</div>
									<!-- //address_util -->

									<div class="box">
										<!-- 최근 배송지 -->
										<div id="address_infomation1" style="display: block;">
											<div class="deliv_form">
												<!-- 주문자정보 str-->
												<input type="hidden" name="MEM_NM" id="MEM_NM" value="권혁민">
												<input type="hidden" name="MEM_ID" id="MEM_ID" value="nevertrust">
												<input type="hidden" name="MEM_TELNO" id="MEM_TELNO" value="02">
												<input type="hidden" name="MEM_TELNO1" id="MEM_TELNO1" value="">
												<input type="hidden" name="MEM_TELNO2" id="MEM_TELNO2" value="">
												<input type="hidden" name="MEM_TELNO3" id="MEM_TELNO3" value="">
												<input type="hidden" name="MEM_MOBL" id="MEM_MOBL" value="01048900172">
												<input type="hidden" name="MEM_EMAIL" id="MEM_EMAIL" value="khm172@naver.com">
												<!-- 주문자정보 end-->

												<div class="row clfix">
													<div class="col_head">수취인 이름*</div>
													<div class="col_body">
														<div class="col_row clfix">
															<div class="col clf">
																<input type="text" name="RCIVR_NM" id="RCIVR_NM" onkeyup="javascript:fn_checkSpclCh(this);" maxlength="20" value="권혁민">
															</div>
														</div>
													</div>
												</div>

												<div class="row phone clfix">
													<div class="col_head">휴대전화 1*</div>
													<div class="col_body col_body1">
														<div class="col">
															<input type="text" name="RCIVR_MOBL" id="RCIVR_MOBL" maxlength="12" onkeydown="fn_onlyFigureKey()" onkeyup="javascript:fn_checkSpclCh(this);" value="01048900172">
														</div>
													</div>

													<div class="col_head col_head2">휴대전화 2</div>
													<div class="col_body col_body2">
														<div class="col">
															<input type="text" id="RCIVR_TELNO" name="RCIVR_TELNO" onkeydown="fn_onlyFigureKey()" onkeyup="javascript:fn_checkSpclCh(this);" maxlength="12">
														</div>
													</div>
												</div>

												<div class="row email clfix">
													<div class="col_head">이메일 주소*</div>
														<div class="col_body">
															<div class="col b1">
																<input type="text" name="MEM_EMAIL1" id="MEM_EMAIL1" onkeyup="javascript:fn_checkSpclCh(this);" maxlength="150" value="khm172">
															</div>
															<div class="col a b2">@</div>
															<div class="col b3">
																<input type="text" id="MEM_EMAIL2" maxlength="100" value="naver.com" onkeyup="javascript:cfn_setCodeJmFld(this);fn_checkSpclCh(this);" disabled=" ">
															</div>
															<div class="col b4">
																<div class="selectbox-ctm size_shoes mail_field" data-value="naver.com">
																	<a href="javascript:void(0)">naver.com</a>
																	<div class="arrow spt_bg"></div>
																	<div class="select-contents option-list">
																		<ul>
																			<li data-option-value="" class="selected"><a href="javascript:void(0)">직접입력</a></li>
																			<li data-option-value="naver.com" class="selected"><a href="javascript:void(0)">naver.com</a></li>
																			<li data-option-value="hanmail.net"><a href="javascript:void(0)">hanmail.net</a></li>
																			<li data-option-value="gmail.com"><a href="javascript:void(0)">gmail.com</a></li>
																			<li data-option-value="nate.com"><a href="javascript:void(0)">nate.com</a></li>
																			<li data-option-value="hotmail.com"><a href="javascript:void(0)">hotmail.com</a></li>
																			</ul>
																	</div>
																</div>
																<!-- //selectbox-ctm -->
															</div>
													</div>
												</div>

												<div class="row addr clfix">
													<div class="col_head">주소*</div>
													<div class="col_body">
														<div class="col_row clfix">
															<div class="col b1">
																<input type="text" name="VIEW_DLIVY_POST_NO" id="VIEW_DLIVY_POST_NO" value="" disabled="">
																<input type="hidden" name="DLIVY_POST_NO" id="DLIVY_POST_NO" value="12102">
															</div>
															<div class="col b2">
																<a href="javascript:fn_zipPop('fn_zipSearchSetting');" class="btn-ctm btn-lgray"><span>주소찾기</span></a>
															</div>
														</div>
														<div class="col_row clfix">
															<div class="col">
																<div class="addrbox disabled">
																<span>(도로명)</span>
																<input type="text" id="VIEW_DLIVY_ADDR" value="" disabled="">
																<input type="hidden" name="DLIVY_ADDR" id="DLIVY_ADDR" value="경기도 남양주시 별내5로 81">
																</div>
															</div>
														</div>
														<div class="col_row clfix">
															<div class="col">
																<div class="addrbox disabled">
																<span>(지번)</span>
																<input type="text" id="VIEW_DLIVY_ADDR_JI" value="" disabled="">
																<input type="hidden" name="DLIVY_ADDR_JI" id="DLIVY_ADDR_JI" value="경기도 남양주시 별내동 1072 남양주 별내 스위첸 아파트">
																</div>
															</div>
														</div>
														<div class="col_row clfix" style="margin-bottom: 0;">
															<div class="col">
																<input type="text" name="DLIVY_DTL_ADDR" id="DLIVY_DTL_ADDR" value="" readonly="" style="background-color:#ebebeb;">
																<input type="hidden" name="H_DLIVY_DTL_ADDR" id="H_DLIVY_DTL_ADDR" value="(별내동, 남양주 별내 스위첸 아파트) 3104동 2203호">
															</div>
														</div>
														<input type="hidden" name="SIDO" id="SIDO" value="경기">
														<input type="hidden" name="GUN" id="GUN" value="남양주시">
														<input type="hidden" name="DONG" id="DONG" value="별내동">
														<input type="hidden" name="DELVYA" id="DELVYA" value="">
														<input type="hidden" name="NM_DORO" id="NM_DORO" value="별내5로">
														<input type="hidden" name="NUM_BLDG" id="NUM_BLDG" value="4136011100103940002000001">
													</div>
												</div>
												<div class="row sms clfix">
													<div class="col_head">SMS 정보수신</div>
													<div class="col_body">
														<div class="col">

															<div class="input-ctm input-radio-ctm checked">
																<input type="radio" id="SMS_RET_Y" name="SMS_RET" value="Y" checked="">
																<label for="SMS_RET_Y"><span class="ctm-box spt_bg"><span class="spt_bg"></span></span>예</label>
															</div>

															<div class="input-ctm input-radio-ctm">
																<input type="radio" id="SMS_RET_N" name="SMS_RET" value="N">
																<label for="SMS_RET_N"><span class="ctm-box spt_bg"><span class="spt_bg"></span></span>아니오</label>
															</div>
														</div>
													</div>
												</div>

												<!-- 161116 SMS 문구 -->
												<div class="noti_sms" style="display: none;padding-left: 90px;font: 12px/12px 'NotoSansKR','Nanum Gothic';color: #027dbf;margin-bottom: 20px;margin-top: -10px;">
													<p>개인정보보호정책에 따라 주문정보 관련 내용은 주문자에게 알림성으로 고지됩니다 </p>
												</div>

												<div class="row msg clfix">
													<div class="col_head">배송 요청 사항*</div>
													<div class="col_body">
														<div class="col_row">
															<div class="col clf">
																<div class="selectbox-ctm size_shoes delvContent" data-value="D">
																	<a href="javascript:void(0)">배송 전 연락바랍니다.</a>
																	<div class="arrow spt_bg"></div>
																	<div class="select-contents option-list">
																		<ul>
																			<li data-option-value=""><a href="javascript:void(0)">직접입력</a></li>
																			<li data-option-value="A"><a href="javascript:void(0)">부재시 경비실에 맡겨주세요.</a></li>
																			<li data-option-value="B"><a href="javascript:void(0)">빠른 배송 부탁드립니다.</a></li>
																			<li data-option-value="C"><a href="javascript:void(0)">부재시 핸드폰으로 연락바랍니다.</a></li>
																			<li data-option-value="D" class="selected"><a href="javascript:void(0)">배송 전 연락바랍니다.</a></li>
																		</ul>
																	</div>
																</div>
																<!-- //selectbox-ctm -->
															</div>
														</div>
														<div class="col_row" id="dlivyView" style="margin-bottom: 0; display: none;">
															<div class="col clf">
																<input type="text" name="DLIVY_MEMO" id="DLIVY_MEMO" onkeyup="javascript:fn_checkSpclCh(this);" maxlength="40">
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- //deliv_form -->
										</div>
										<!-- //address_infomation1 -->
									</div>
									<!-- //box -->
								</div>
								<!-- //for_member -->
							</div>
							<!-- //delivery_info -->

							<!-- 1008 블랙프라이데이 START -->
							<div class="coupon_codes">
								<h3>프로모션 쿠폰/코드</h3>
								<input type="text" id="prmtText">
								<div class="wrap">
									<a href="#" class="btn-ctm" campaign-label="다운로드" id="btnPrmtCode">
										<span>다운로드<span class="spt_bg"></span></span>
									</a>
								</div>
							</div>
							<!-- 1008 블랙프라이데이 END -->

							<h3 class="noline">결제수단
</h3>

							<ul class="payment_tabs">
								<li class="tab-link Gtab-1" data-tab="tab-1">간편결제</li>
								<li class="tab-link Gtab-2 on" data-tab="tab-2">일반결제</li>
							</ul>

							<div class="payment_info">
								<div class="box payment_options" id="payMethodTr">
									<div class="box_form">
										<div id="tab-1" class="tab-content">
											<div class="input-ctm input-radio-ctm">
													<input type="radio" id="naverpay" name="payMethod" value="08">
													<label for="naverpay"><span class="ctm-box spt_bg"><span class="spt_bg"></span></span>네이버페이</label>
												</div>
											<div class="input-ctm input-radio-ctm">
												<input type="radio" id="spay" name="payMethod" value="03">
												<label for="spay"><span class="ctm-box spt_bg"><span class="spt_bg"></span></span>삼성페이</label>
											</div>
											<div class="input-ctm input-radio-ctm">
												<input type="radio" id="kpay" name="payMethod" value="03">
												<label for="kpay"><span class="ctm-box spt_bg"><span class="spt_bg"></span></span>KPAY</label>
											</div>
											<div class="input-ctm input-radio-ctm">
												<input type="radio" id="kakao" name="payMethod" value="03">
												<label for="kakao"><span class="ctm-box spt_bg"><span class="spt_bg"></span></span>카카오페이</label>
											</div>
											<div class="input-ctm input-radio-ctm">
												<input type="radio" id="lpay" name="payMethod" value="03">
												<label for="lpay"><span class="ctm-box spt_bg"><span class="spt_bg"></span></span>L.PAY</label>
											</div>
											<div class="input-ctm input-radio-ctm last">
												<input type="radio" id="payco" name="payMethod" value="03">
												<label for="payco"><span class="ctm-box spt_bg"><span class="spt_bg"></span></span>PAYCO</label>
											</div>
										</div>
										<div id="tab-2" class="tab-content on">
											<div class="input-ctm input-radio-ctm">
												<input type="radio" id="creditcard" name="payMethod" value="03">
												<label for="creditcard"><span class="ctm-box spt_bg"><span class="spt_bg"></span></span>카드결제</label>
											</div>
<div class="input-ctm input-radio-ctm">
												<input type="radio" id="vbank" name="payMethod" value="05">
												<label for="vbank"><span class="ctm-box spt_bg"><span class="spt_bg"></span></span>무통장입금</label>
											</div>
<div class="input-ctm input-radio-ctm checked">
												<input type="radio" id="mobile" name="payMethod" value="07">
												<label for="mobile"><span class="ctm-box spt_bg"><span class="spt_bg"></span></span>휴대폰결제</label>
											</div>
											<div class="input-ctm input-radio-ctm last">
												<input type="radio" id="account" name="payMethod" value="04">
												<label for="account"><span class="ctm-box spt_bg"><span class="spt_bg"></span></span>실시간이체</label>
											</div>
										</div>
									</div>
								</div>

								<!-- //payment_options -->
								<span class="pay_line"></span>
								<div class="payment_contents" id="payMethodTrAdd">
									<!-- 161209 카드결제 추가 -->
									<div class="payment_creditcard_wrap" id="creditcard_payment" style="display: none;">
										<div class="box">
											<div class="card_payment_options clfix">

												<div class="sel_box clfix">
													<label for="">카드종류</label>
													<div id="pay_card_cd" class="selectbox-ctm blue" data-value="">
														<a href="javascript:void(0)">카드선택</a>
														<div class="arrow spt_bg"></div>
														<div class="select-contents option-list">
															<ul id="card_area"><li data-option-value="14"><a href="javascript:fnSetQta(0);">신한</a></li><li data-option-value="06"><a href="javascript:fnSetQta(0);">KB국민</a></li><li data-option-value="12"><a href="javascript:fnSetQta(0);">삼성</a></li><li data-option-value="11"><a href="javascript:fnSetQta(0);">BC</a></li><li data-option-value="04"><a href="javascript:fnSetQta(0);">현대</a></li><li data-option-value="34"><a href="javascript:fnSetQta(0);">하나</a></li><li data-option-value="03"><a href="javascript:fnSetQta(0);">롯데</a></li><li data-option-value="41"><a href="javascript:fnSetQta(0);">NH농협</a></li><li data-option-value="43"><a href="javascript:fnSetQta(0);">씨티</a></li><li data-option-value="44"><a href="javascript:fnSetQta(0);">우리</a></li><li data-option-value="56"><a href="javascript:fnSetQta(1);">카카오뱅크</a></li><li data-option-value="55"><a href="javascript:fnSetQta(0);">케이뱅크</a></li><li data-option-value="33"><a href="javascript:fnSetQta(0);">전북은행</a></li><li data-option-value="54"><a href="javascript:fnSetQta(1);">새마을금고</a></li><li data-option-value="32"><a href="javascript:fnSetQta(0);">광주</a></li><li data-option-value="35"><a href="javascript:fnSetQta(0);">산업카드</a></li><li data-option-value="48"><a href="javascript:fnSetQta(1);">신협체크</a></li><li data-option-value="51"><a href="javascript:fnSetQta(0);">수협</a></li><li data-option-value="52"><a href="javascript:fnSetQta(0);">제주</a></li><li data-option-value="71"><a href="javascript:fnSetQta(1);">우체국체크</a></li><li data-option-value="95"><a href="javascript:fnSetQta(1);">저축은행</a></li></ul>
														</div>
													</div>
												</div>

												<div class="sel_box clfix">
													<label for="">할부기간</label>
													<div id="pay_card_qta" class="selectbox-ctm blue" data-value="">
														<a href="javascript:void(0)">일시불</a>
														<div class="arrow spt_bg"></div>
														<div class="select-contents option-list">
															<ul id="card_qta"><li data-option-value="" class="selected"><a href="javascript:void(0)">일시불</a></li><li data-option-value="2"><a href="javascript:void(0);">2개월 </a></li><li data-option-value="3"><a href="javascript:void(0);">3개월 </a></li><li data-option-value="4"><a href="javascript:void(0);">4개월 </a></li><li data-option-value="5"><a href="javascript:void(0);">5개월 </a></li><li data-option-value="6"><a href="javascript:void(0);">6개월 </a></li><li data-option-value="7"><a href="javascript:void(0);">7개월 </a></li><li data-option-value="8"><a href="javascript:void(0);">8개월 </a></li><li data-option-value="9"><a href="javascript:void(0);">9개월 </a></li><li data-option-value="10"><a href="javascript:void(0);">10개월 </a></li><li data-option-value="11"><a href="javascript:void(0);">11개월 </a></li><li data-option-value="12"><a href="javascript:void(0);">12개월 </a></li></ul>
														</div>
													</div>
												</div>

												<a href="javascript:void(0)" class="view_card_benefit">무이자혜택 <span class="spt_bg"></span></a>
											</div>
										</div>
									</div>

									<div class="payment_mobile_wrap" id="mobile_payment" style="display: block;">
										<div class="box">
											<h4>결제 안내</h4>
											<p class="desc">결제 한도금액은 통신사별, 회원등급별, 신규/번호이동 여부에 따라 다를 수 있습니다.</p>
											<p class="desc" style="margin-bottom:8px;"><strong>※ 결제 제한 및 이용한도에 대한 자세한 내용은 FAQ 참고</strong></p>
											<p class="desc">휴대폰 결제의 경우, 현금영수증 및 세금계산서 발급은 불가능합니다.</p>
											<p class="desc" style="margin-bottom:18px;">(현금영수증은 휴대폰 요금 현금 지불 시에만 통신사 통해 발급 가능)</p>
											<h4>취소 및 반품 안내</h4>
											<ul>
												<li>-결제한 달과 취소/반품한 달이 같은 경우, 결제 금액은 당일 취소 됩니다.</li>
												<li>-결제한 달과 취소/반품한 달이 다른 경우, 입력하신 은행 계좌로 영업일 기준 3일 이내에 환불 됩니다.</li>
												<li>-부분 취소/반품의 경우, 취소 건을 제외한 금액을 재결제 하시면 이전 결제 건 전체가 취소 됩니다.</li>
												<li>-부분 취소 시 결제한도 금액이 부족한 경우, 휴대폰 결제 외에 다른 결제 수단으로 이용해주세요.</li>
											</ul>
											<p class="desc"><strong>※ 자세한 결제 취소 및 반품 절차는 FAQ 참고</strong></p>
										</div>

									</div>
									<div class="payment_kpay_wrap" id="kpay_payment" style="padding-bottom: 0px; color: rgb(121, 123, 128); display: none;">
										<div class="box" style="border-bottom-width:0;">
											<h4>KG이니시스의 스마트폰 앱 간편결제 서비스</h4>
											<p class="desc">사용자가 신용카드 결제정보를 Kpay에 미리 등록하고, 가맹점 결제 시 Kpay 어플리케이션을 실행, 간편하게 결제하는 서비스 입니다.</p>
											<dl>
												<dt>※ Kpay 지원 카드</dt>
												<dd>신한, 비씨, 삼성, 롯데, 하나, 국민, 현대, 농협, 외환카드 사용가능</dd>
											</dl>
											<dl>
												<dt>※ Kpay 안드로이드 지원 단말</dt>
												<dd>지원 OS : 안드로이드 4.0 아이스크림 샌드위치 이상<br>해상도 : 1280 x 720 이상 단말 (갤럭시S2 와 해당 동급 스마트폰 사용 불가)</dd>
											</dl>
											<dl>
												<dt>※ Kpay iOS 지원 단말</dt>
												<dd>지원 OS : iOS 6.0 이상(iPhone 4 이상 단말기 사용가능)<br>해상도 : 1280 x 720 이상 단말(갤럭시S2 와 해당 동급 스마트폰 사용 불가)</dd>
											</dl>
											<p class="desc"><strong>위의 지원 카드 및 지원 단말기 등을 확인 후 사용해 주세요.</strong></p>
										</div>
									</div>

									<div class="payment_account_wrap" id="account_payment" style="display: none;">
										<div class="box" style="border-bottom:1px solid #d6d8d9;">
											<ul class="desc" id="showAccount">
												<li><strong>- 실시간 계좌이체시 은행별 서비스 가능시간을 확인바랍니다.</strong></li>
												<li class="last"><strong>- 실시간 계좌이체는 10분 이내로 입금확인을 하실 수 있습니다.</strong></li>
											</ul>
											<ul class="desc" id="showVbank">
												<li class="last"><strong>- 아래 ‘결제하기’ 버튼클릭 후 입금은행 및 계좌, 입금기한을 확인하실 수 있습니다.</strong></li>
											</ul>
											<ul class="desc" id="showNaverPay"><li><strong>- 네이버페이는 네이버ID로 별도 앱 설치 없이 신용카드 또는 은행계좌 정보를 등록하여 네이버페이 비밀번호로<br>&nbsp;&nbsp; 결제할 수 있는 간편결제 서비스입니다.</strong></li>
												<li><strong>- 주문 변경 시 카드사 혜택 및 할부 적용 여부는 해당 카드사 정책에 따라 변경될 수 있습니다.</strong></li>
												<li><strong>- 결제 가능한 신용카드 : 신한, 삼성, 현대, BC, 국민, 하나, 롯데, NH농협, 씨티 </strong></li>
												<li><strong>- 결제 가능한 은행 : NH농협, 국민, 신한, 우리, 기업, SC제일, 부산, 경남, 수협, 우체국 </strong></li>
												<li class="last"><strong>- 네이버페이 카드 간편결제는 네이버페이에서 제공하는 카드사 별 무이자, 청구할인 혜택을 받을 수 있습니다.</strong></li>
											</ul>
										</div>
										<div class="box">
											<h4>현금영수증 신청</h4>
											<div class="box_form" id="select_account_recpt_yn" style="margin-bottom: 0;">
												<div class="input-ctm input-radio-ctm view checked">
													<input type="radio" id="CASH_RECPT_APPLY_Y" name="CASH_RECPT_APPLY" value="Y" checked="">
													<label for="CASH_RECPT_APPLY_Y"><span class="ctm-box spt_bg"><span class="spt_bg"></span></span>신청하기</label>
												</div>
												<!-- 현급영수증 신청하기 -->

												<div class="input-ctm input-radio-ctm view">
													<input type="radio" id="CASH_RECPT_APPLY_N" name="CASH_RECPT_APPLY" value="N">
													<label for="CASH_RECPT_APPLY_N"><span class="ctm-box spt_bg"><span class="spt_bg"></span></span>신청안함</label>
												</div>
												<!-- 현급영수증 신청안함 -->
											</div>
											<!-- //box_form -->
											<ul class="desc" id="desc_account" style="margin-top: 15px;">
												<li>- 개인 소득공제용으로 신청하실 경우 국세청으로 자동전송됩니다.</li>
												<li class="last">- 사업자 지출 증빙용으로 신청하시면 세금계산서로 활용 가능합니다.</li>
											</ul>
										</div>

										<div class="box" id="select_account_recpt_prpos">
											<h4>현금영수증 발급</h4>
											<div class="box_form">

												<input type="hidden" name="CASH_RECPT_PUBL_PRPOS" id="CASH_RECPT_PUBL_PRPOS">
												<div class="input-ctm input-radio-ctm view checked">
													<input type="radio" id="CASH_RECPT_PUBL_PRPOS_01" name="CASH_RECPT_PUBL_PRPOS_R" value="01" checked="">
													<label for="CASH_RECPT_PUBL_PRPOS_01"><span class="ctm-box spt_bg"><span class="spt_bg"></span></span>개인소득공제용</label>
												</div>
												<!-- 개인소득공제용 -->

												<div class="input-ctm input-radio-ctm view">
													<input type="radio" id="CASH_RECPT_PUBL_PRPOS_02" name="CASH_RECPT_PUBL_PRPOS_R" value="02">
													<label for="CASH_RECPT_PUBL_PRPOS_02"><span class="ctm-box spt_bg"><span class="spt_bg"></span></span>사업자증빙용</label>
												</div>
												<!-- 사업자 증빙용 -->
											</div>

											<!-- //box_form -->
											<div class="info_escrw">
												<div id="account_escrw_personal" style="display: block;">
													<label for="CASH_RECPT_MOBLNO">휴대폰번호</label>
													<input type="hidden" name="CASH_RECPT_CRT_DIVI_PERS" id="CASH_RECPT_CRT_DIVI_PERS" value="10">
													<input type="text" id="CASH_RECPT_MOBLNO" value="01048900172" onkeydown="fn_onlyFigureKey()" maxlength="11">
												</div>
												<div id="account_escrw_business">
													<label for="CASH_RECPT_BIZRNO">사업자 등록번호</label>
													<input type="hidden" name="CASH_RECPT_CRT_DIVI_BIZR" id="CASH_RECPT_CRT_DIVI_BIZR" value="30">
													<input type="text" id="CASH_RECPT_BIZRNO" onkeydown="fn_onlyFigureKey()" maxlength="10">
												</div>
											</div>
										</div>
										<div class="box last">
											<h4>한국스탠다드차타드은행 채무지급보증안내</h4>
											<ul class="desc">
												<li class="last">당사는 고객님이 현금으로 결제한 금액에 대해 한국스탠다드차타드은행과 채무 지급보증 계약을 체결하여 안전거래를<br>보장하고 있습니다.</li>
											</ul>
											<a href="javascript:fn_certifiedInfoPopAdi();" style="position: absolute;top: 15px;left: 220px;"><img src="//image.adidas.co.kr/images/adidas/order/btn_security_check.gif" alt="서비스 가입사실 확인"></a>
										</div>
									</div>

									<div class="payment_account_wrap" id="kakao_payment" style="display: none;">
										<div class="box" style="border-bottom:1px solid #d6d8d9;">
											<ul class="desc">
												<li>
													<strong>- 카카오페이 간편결제는 카카오페이에서 운영하는 간편결제 서비스 입니다.</strong>
												</li>
												<li>
													<strong>- 결제가능카드 : 신한, BC, KB, 삼성, 현대, 롯데, 하나, NH</strong>
												</li>
												<li>
													<strong>- 카카오페이로 결제 시 카드사에서 제공하는 제휴 및 청구할인은 이용불가 합니다.</strong>
												</li>

</ul>
										</div>
									</div>

									<div class="payment_account_wrap" id="lpay_payment" style="display: none;">
										<div class="box" style="border-bottom:1px solid #d6d8d9;">
											<ul class="desc">
												<li>
													<strong>- L.pay 간편결제는 롯데에서 운영하는 온 / 오프라인 통합 간편결제 서비스입니다.</strong>
												</li>
												<li>
													<strong>- 결제 불가 카드 : 농협카드, 씨티카드 (추후 서비스 제공 예정)</strong>
												</li>
												<li>
													<strong>- 결제방법 : 앱 가입 -&gt; 결제수단 등록 -&gt; 지문 or PIN 인증 후 결제</strong>
												</li>
												<li>
													<strong>- 카드사/금융사별 정책에 따라 고액 결제 시, 추가 인증이 필요합니다.</strong>
												</li>
											</ul>
										</div>
									</div>
									<div class="payment_account_wrap" id="payco_payment" style="display: none;">
										<div class="box" style="border-bottom:1px solid #d6d8d9;">
											<ul class="desc">
												<li>
													<strong>- PAYCO 간편결제는 엔에이치엔페이코(주)에서 운영하는 서비스이며,
														<br> &nbsp;&nbsp;PAYCO ID 하나로 간편하게 결제하실 수 있습니다.</strong>
												</li>
												<li>
													<strong>- 결제가능 카드 : 신한, BC, KB, 삼성, 현대, 롯데, 하나, NH</strong>
												</li>
												<li>
													<strong>- BC, KB, 현대, NH로 결제 시 카드사에서 제공하는 제휴 및 청구할인 이용이 가능합니다.
														<br> &nbsp;&nbsp;(단, 정책에 따라 일부 변동이 있을 수 있습니다.)</strong>
												</li>
											</ul>
										</div>
									</div>

									<!-- //payment_account -->
								</div>
								<!-- //payment_contents -->
								<!-- 161213 -->
								<div id="agreebox_inicis" class="agr_box">
									<div class="box">
										<div class="input-ctm input-check-ctm small" id="input_inicis_agree_all">
											<input type="checkbox" id="pay_agree_yn">
											<label for="pay_agree_yn" style="font-size:13px;font-weight: bold;color:#027dbf;">
												<a class="ctm-box spt_bg" href="javascript:void(0)">
													<span class=" spt_bg"></span>
												</a>
												전체 동의 하기
											</label>
										</div>
									</div>
									<!-- 161219 sub_agreements 부분 추가 -->
									<div class="sub_agreements" style="display: none;">
										<div class="box">
											<div class="input-ctm input-check-ctm small">
												<input type="checkbox" id="term1">
												<label for="term1" style="font-size:13px;">
													<a class="ctm-box spt_bg" href="javascript:void(0)">
														<span class=" spt_bg"></span>
													</a>
													전자금융거래 이용약관
												</label>
											</div>
											<a href="javascript:void(0);" class="view_more_term" onclick="window.open('https://plugin.inicis.com/html60/main/01_Information.html','inicisTerm','width=980,height=580,scrollbars=yes')">자세히보기 <span class="spt_bg"></span></a>
										</div>
										<div class="box">
											<div class="input-ctm input-check-ctm small">
												<input type="checkbox" id="term2">
												<label for="term2" style="font-size:13px;">
													<a class="ctm-box spt_bg" href="javascript:void(0)">
														<span class=" spt_bg"></span>
													</a>
													고유식별정보 수집 및 이용안내
												</label>
											</div>
											<a href="javascript:void(0);" class="view_more_term" onclick="window.open('https://plugin.inicis.com/html60/main/02_Information.html','inicisTerm','width=450,height=580,scrollbars=yes')">자세히보기 <span class="spt_bg"></span></a>
										</div>
										<div class="box">
											<div class="input-ctm input-check-ctm small">
												<input type="checkbox" id="term3">
												<label for="term3" style="font-size:13px;">
													<a class="ctm-box spt_bg" href="javascript:void(0)">
														<span class=" spt_bg"></span>
													</a>
													개인정보의 수집 및 이용안내
												</label>
											</div>
											<a href="javascript:void(0)" class="view_more_term" onclick="window.open('https://plugin.inicis.com/html60/main/03_Information.html','inicisTerm','width=980,height=580,scrollbars=yes')">자세히보기 <span class="spt_bg"></span></a>
										</div>
										<div class="box">
											<div class="input-ctm input-check-ctm small">
												<input type="checkbox" id="term4">
												<label for="term4" style="font-size:13px;">
													<a class="ctm-box spt_bg" href="javascript:void(0)">
														<span class=" spt_bg"></span>
													</a>
													개인정보 제공 및 위탁안내
												</label>
											</div>
											<a href="javascript:void(0)" class="view_more_term" onclick="window.open('https://plugin.inicis.com/html60/main/04_Information.html','inicisTerm','width=980,height=580,scrollbars=yes')">자세히보기 <span class="spt_bg"></span></a>
										</div>
									</div>
									<!-- //sub_agreements -->
								</div>
								<!-- //161213 -->

<div class="checkout_btn">
									<!-- 161109 -->
									<div style="margin-bottom: 15px; margin-top:40px;">
										<div class="input-ctm input-check-ctm checked">
<input type="checkbox" id="LST_PAY_USE_YN" checked="">
											<label for="LST_PAY_USE_YN" style="font-size:13px;">
												<a class="ctm-box spt_bg" href="javascript:void(0)">
													<span class=" spt_bg"></span>
												</a>
												선택한 결제 수단을 다음에도 사용
											</label>
										</div>
									</div>
									<!-- //161109 -->

									<a href="javascript:fn_pay();" class="btn-ctm btn-blue" id="paymtButton"><span>결제하기</span></a>
								</div>
							</div>
							<!-- //payment_info -->
						</div>
						<!-- //payment_wrap -->

						<!-- 가격정보 영역-->
						<div class="prods_info" id="test_box" style="top: 58px;">
							<div class="prodlist">
								<input type="hidden" name="PROD_CD" id="PROD_CD1" value="FV9997">
											<input type="hidden" name="OPTION_NO" id="OPTION_NO1" value="225">
											<input type="hidden" name="OPTION_NM" id="OPTION_NM1" value="225">
											<input type="hidden" name="PROD_QTY" id="PROD_QTY1" value="1">
											<input type="hidden" name="ADD_OPTION_NO" id="ADD_OPTION_NO1" value="">
											<input type="hidden" name="MI_PROD_YN" id="MI_PROD_YN1" value="N">
											<input type="hidden" name="QUICK_DLIVY_YN" id="QUICK_DLIVY_YN1" value="N">
											<input type="hidden" name="ECOM_ONLY_YN" id="ECOM_ONLY_YN1" value="N">
											<input type="hidden" name="B2B_YN" id="B2B_YN1" value="N">
											<input type="hidden" name="LANDING_PAGE_NO" id="LANDING_PAGE_NO1" value="">

											<div class="box last">
												<a href="https://shop.adidas.co.kr/PF020401.action?PROD_CD=FV9997" target="_blank">
																<div class="img"><img src="//image.adidas.co.kr/upload/prod/basic/60/FV9997-01-01_60X60.jpg" class="prd" alt="[Men's Originals] 제트엑스 2K 부스트" width="60" height="60"></div>
															</a>
														<!-- 부가상품 -->
												<div class="info">
													<div class="tit">
														<a href="https://shop.adidas.co.kr/PF020401.action?PROD_CD=FV9997" target="_blank">제트엑스 2K 부스트</a>
																	<input type="hidden" name="PROD_NM_KOR" id="PROD_NM_KOR" value="[Men's Originals] 제트엑스 2K 부스트">
														<input type="hidden" name="PROD_CPON_FV9997_225_1" id="PROD_CPON_FV9997_225_1" value="">
														<input type="hidden" name="PROD_CPON_AMT_FV9997_225_1" id="PROD_CPON_AMT_FV9997_225_1" value="0">

														<!-- 사은품 -->
														<!-- ===================================================================================== -->
														<!-- ===================================================================================== -->
													</div>

													<div class="details">FV9997 / 사이즈 225 / 수량 1</div>
													<div class="price-container">
														<span class="prc">159,000<span class="won">원</span></span>
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
										<span class="prc">159,000<span class="won">원</span></span>
									</div>
								</div>
								<div class="box clfix">
									<strong>할인</strong>
									<div class="price-container">
										<span class="prc sale">0<span class="won">원</span></span>
									</div>
								</div>
								<div class="box clfix" style="border-bottom-width: 0;">
									<strong>쿠폰</strong>
									<div class="price-container">
										<span class="prc sale"><span id="TOTAL_DISCOUNT_AMT_TEMP_VIEW">0</span><span class="won">원</span></span>
									</div>
								</div>

								<!-- //쿠폰 -->
								<!-- 170120 쿠폰 없는경우 -->
								<div class="box btn_cpn clfix no_cpn">
									<input type="hidden" name="TOTAL_DISCOUNT_AMT_TEMP" id="TOTAL_DISCOUNT_AMT_TEMP" value="0" readonly="readonly">
									<input type="hidden" name="TOTAL_DISCOUNT_AMT" id="TOTAL_DISCOUNT_AMT" value="0" style="width:114px;" readonly="readonly">
									<input type="hidden" name="PROD_CPON_AMT" id="PROD_CPON_AMT" value="0">
									<input type="hidden" name="ORD_CPON_AMT" id="ORD_CPON_AMT" value="0">
									<input type="hidden" name="ORD_CPON_NOS" id="ORD_CPON_NOS" value="">

									<a href="javascript:fn_showCpon();">
										<span>보유한 쿠폰 총 <strong>0</strong>장 / 쿠폰 등록 및 사용</span>
										<span class="spt_bg" style="display: block;"></span>
									</a>
								</div>

								<div class="box deliv clfix">
									<strong>배송비
										<span class="deliv_tooltip">
											<span class="spt_bg"></span>
											<span class="tooltip-layer">
												<div class="arrow spt_bg"></div>
												<span id="chgContents">
													<div class="tooltip-contents" style="width:230px;line-height:19px;">5만원 이상 구매시 무료배송 (도서 산간 지역은 추가 배송비 발생)</div>
												</span>
											</span>
										</span>
									</strong>

									<input type="hidden" name="MI_ORDER_YN" id="MI_ORDER_YN" value="N">
									<div class="price-container">
										<span class="prc" id="viewDlvFee">0 <span class="won">원</span></span>
												<input type="hidden" name="DLIVY_FEE" id="DLIVY_FEE" value="0">
												<input type="hidden" name="ORG_DLIVY_FEE" id="ORG_DLIVY_FEE" value="0">
											</div>
								</div>

								<!-- 무료배송비 -->
								<div class="box total_p clfix">
									<strong>총 결제금액</strong>
									<div class="price-container">
										<span class="prc" id="TOTAL_PAY_AMT_STR">159,000 <span class="won">원</span></span>

										<input type="hidden" name="TOTAL_ORDER_AMT" id="TOTAL_ORDER_AMT" value="159000">
										<input type="hidden" name="TOTAL_POINT" id="TOTAL_POINT" value="7950">

										<input type="hidden" name="TOTAL_PAY_AMT" id="TOTAL_PAY_AMT" value="159000">
										<input type="hidden" name="ORG_TOTAL_PAY_AMT" id="ORG_TOTAL_PAY_AMT" value="159000">
										<input type="hidden" name="H_DLV_FEE_YN" id="H_DLV_FEE_YN" value="N">
										<input type="hidden" name="H_DLV_CPN_YN" id="H_DLV_CPN_YN" value="N">
										<input type="hidden" name="PRE_SAVE_POINT" id="PRE_SAVE_POINT" value="7950">
										<input type="hidden" name="SAVE_RATE" id="SAVE_RATE" value="5">
										<input type="hidden" name="ADD_PROD_CNT" id="ADD_PROD_CNT" value="0">
										<p class="point">예상포인트 <strong><span id="preSaveRate">7,950</span> (5%)</strong></p>
										</div>
								</div>
							</div>
							<!-- //price_box -->
						</div>
						<!-- //prods_info -->
					</div>
					<!-- //contents -->

				</div>
				<!-- //payment-main -->

			</form>

			<!-- 결제용 frame -->
			<iframe src="" name="PAY_FRAME" id="PAY_FRAME" style="width:0;height:0;visibility:hidden" title="빈프레임"></iframe>
			<!-- // 결제용 frame -->

		</div>
		<!-- //contents -->

		<script type="text/javascript">
		_TRK_PI="ODF";
		</script>
	</div>
	