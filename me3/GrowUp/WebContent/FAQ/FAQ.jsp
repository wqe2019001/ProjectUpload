<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<meta charset="UTF-8">

<title>자주 묻는 질문</title>
</head>

<script type="text/javascript"></script>
<body>
<jsp:include page="${context}/common/top.jsp"></jsp:include>
<!-- title, visual start -->
<div class="titarea" style='background-image: url("${context}/img/subbg_faq.jpg");'></div>
<!-- title, visual end -->
<!-- Detail -->
<div class="container footertop">
	<div class="px-5 py-5">
	
		<!-- board title start -->
		<div class="page-header">
			<div class="row py-5">
				<div class="d-flex flex-row mb-12">
					<p class="title p-2 fs-1 fw-bold">자주 묻는 질문</p>
				</div>
			</div>
		</div>
		<!-- board title end -->
			
			<div class="accordion accordion-flush " id="accordionFlushExample">
			  <div class="accordion-item">
			    <div class="accordion-header fs-4" id="flush-headingOne">
			      <button class="accordion-button collapsed border-bottom border-2" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
		        	<p class="gotu fw-bold">Q</p><p class="px-4">비회원도 구매가 가능한가요?</p>
			      </button>
			    </div>
			    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
			      <div class="accordion-body fs-6">
				    <p class="lh-base py-3">   
						글로우업은 회원제로 운영되고있어 비회원은 주문이 불가능합니다. <br>
						회원가입 후 주문하시면 다양한 이벤트 혜택들을 누리실 수 있습니다. <Br>
					</p>
			    </div>
			  </div>
			  
			  <div class="accordion-item" id="accordionFlushExample">
			    <div class="accordion-header fs-4" id="flush-headingTwo">
			      <button class="accordion-button collapsed border-bottom border-2" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
		        	<p class="gotu fw-bold">Q</p><p class="px-4">주문한 상품과 다른 상품이 왔어요.</p>
			      </button>
		    	</div>
			    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
			      <div class="accordion-body fs-6">
				    <p class="lh-base py-3">   
					오배송으로 불편을 끼쳐 드려 죄송합니다.<br>
					글로우업 사이트 하단의 [고객센터 > 1:1 상담] 혹은 고객서비스센터(수신자 요금 부담) 1577-1234로 연락 주시면
					신속하게 처리해드리겠습니다.
					</p>
			    </div>
			  </div>
			  
			  <div class="accordion-item" id="accordionFlushExample">
			    <div class="accordion-header fs-4" id="flush-headingThree">
			      <button class="accordion-button collapsed border-bottom border-1" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
		        	<p class="gotu fw-bold">Q</p><p class="px-4">교환은 어떻게 하나요?</p>
			      </button>
			    </div>
			    <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
			      	<div class="accordion-body fs-6">   
				    	<p class="lh-base py-3">       
				      	상품 불량 및 오배송 등의 경우 동일 제품으로 교환 접수 가능하나 상품이 마음에 들지 않거나 고객 변심에 의한 경우반품 후 재구매로 진행 필요한 점 안내드립니다.<br>
						(고객 변심인 경우 반품 안내 페이지를 통해 확인 부탁드립니다.)<br>
						* 상품 불량 및 오배송으로 교환을 원하시는 경우에는 아래 순서로 신청하여 주시면 내용 확인 후 교환 조치해 드립니다.<br>
						<br>
						1. [1:1 고객 상담] 또는 고객상담실(수신자 요금 부담) 1577-1234로 연락주셔야만 회수접수가 가능하니 꼭 상담실로 연락해주세요.<br>
						2. 회수신청이 접수되면 제품 회수를 위해 배송받으신 주소로 글로우업 지정 택배사에서(CJ대한통운택배) 영업일 기준 1~3일 내 직접 방문하여 상품을 수거합니다. <br>
						3. 회수상품 물류 검수 완료 후 새로운 제품으로 출고<br>
						* 교환 제품이 1~2일내 준비하여 출고되며,출고 이 후 CJ대한통운을 통해 택배사 사정에 따라 평일 1~3일내 배송됩니다.<br>※입고 시간이 소요되는 제품인 경우 추가 시간이 소요될 수 있습니다.
						</p>
				    </div>
				  </div>
			  </div>
			  
			<div class="accordion-item" id="accordionFlushExample">
			    <div class="accordion-header fs-4" id="flush-headingFour">
					<button class="accordion-button collapsed border-bottom border-1" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false" aria-controls="flush-collapseFour">
			    		<p class="gotu fw-bold">Q</p><p class="px-4">배송비는 얼마인가요?</p>
					</button>
			    </div>
			    <div id="flush-collapseFour" class="accordion-collapse collapse" aria-labelledby="flush-headingFour" data-bs-parent="#accordionFlushExample">
			      <div class="accordion-body fs-6">   
				    <p class="lh-base py-3">
					현재 배송비 무료 이벤트 진행중이므로 배송비는 부과되지 않습니다. (3/1 ~ 3/31 까지 진행)<br>
				    3월 배송비 무료 이벤트 종료 이후에는  고객님의 실 결제금액(할인 후 결제금액)이 5만원 이상일 경우 무료로 배송해드립니다.<br>
					그러나 총 결제금액이 5만 원 미만일 경우 고객님께서 배송비 2,500원을 부담해주셔야 합니다.<br>
					5만원 미만 주문 시 배송비 2,500원이 자동으로 추가 결제됩니다.
					</p>
				  </div>
			    </div>
			</div>
		    
		  	<div class="accordion-item" id="accordionFlushExample">
			    <div class="accordion-header fs-4" id="flush-headingFive">
			      <button class="accordion-button collapsed border-bottom border-1" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFive" aria-expanded="false" aria-controls="flush-collapseFive">
			      	 <p class="gotu fw-bold">Q</p><p class="px-4">반품이 가능한 기준을 알고 싶어요.</p>
			      </button>
			    </div>
		    	<div id="flush-collapseFive" class="accordion-collapse collapse" aria-labelledby="flush-headingFive" data-bs-parent="#accordionFlushExample">
			      <div class="accordion-body fs-6">
				    <p class="lh-base py-3">        
			   		<b>1. 반품이 가능한 경우 </b><br>
			   		<br>
					1) 단순 변심, 착오 구매에 따른 교환/반품 신청은 상품을 공급받은 날부터 14일 이내 가능합니다. (배송비 고객 부담)<br>
					2) 다만, 공급받은 상품이 표시/광고의 내용과 다르거나 계약 내용과 다르게 이행된 경우에는 상품을 공급받은 날부터 3개월 이내,<br>
					그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내 교환/반품 신청을 하실 수 있습니다. (배송비 회사 부담)<br>
					3) 교환/반품을 원하는 고객은 쇼핑몰 고객센터 (1577-1234)에 전화 혹은 1:1고객상담 문의 등록 시 확인 후 회수 접수 가능합니다.<br>
					신청 후 2~3일 이내에 글로우업 지정 택배사가 직접 방문하여 상품을 수거합니다.<br>
					﻿4) 해당 상품 구매 시 사은품/증정품 등이 제공된 경우, 상품 교환/반품 시 함께 보내주셔야 합니다.<br>
					<br>﻿
					<b>﻿2. 반품이 불가능한 경우 </b><br>
					<br>
					1) 고객에게 책임이 있는 사유로 상품이 멸실되거나 훼손된 경우(상품 내용을 확인하기 위하여 포장 등을 훼손한 경우는 제외)<br>
					2) 고객의 사용 또는 일부 소비로 상품 가치가 현저히 감소한 경우<br>
					3) 시간이 지나 다시 판매하기 곤란할 정도로 상품 가치가 현저히 감소한 경우<br>
					4) 복제가 가능한 상품의 포장을 훼손한 경우<br>
					5) 고객의 주문에 따라 개별적으로 생산되는 상품 또는 이와 유사한 상품에 대하여 청약철회 등을 인정하는 경우 통신판매업자에게 회복할 수 없는 중대한 피해가 예상되는 경우로서 사전에 해당 거래에 대하여 별도로 그 사실을 고지하고 고객의 서면(전자 문서 포함)에 의한 동의를 받은 경우<br>
					</p>
				  </div>
			    </div>
			</div>
			
			<div class="accordion-item" id="accordionFlushExample">
			    <div class="accordion-header fs-4" id="flush-headingSix">
			      <button class="accordion-button collapsed border-bottom border-1" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSix" aria-expanded="false" aria-controls="flush-collapseSix">
			      	 <p class="gotu fw-bold">Q</p><p class="px-4">주문한 상품은 언제 배송되나요?</p>
			      </button>
			    </div>
		    	<div id="flush-collapseSix" class="accordion-collapse collapse" aria-labelledby="flush-headingSix" data-bs-parent="#accordionFlushExample">
			      <div class="accordion-body fs-6">
				    <p class="lh-base py-3">        
			   		주문하신 상품은 주문일 기준 3일~5일 이내(주말 및 공휴일 제외)로 배송됩니다.<br>

					※ 도서산간, 제주도 지역의 경우 5~7일 이내 배송됩니다.<br>
					※ 브랜드 세일 기간에는 주문량 폭주로 인해 주문일로부터 5~7일 이내 배송됩니다.<br>
					※ 예약배송 상품의 경우, 지정된 배송일에 배송됩니다.<br>
					</p>
				  </div>
			    </div>
			</div>
			
			<div class="accordion-item" id="accordionFlushExample">
			    <div class="accordion-header fs-4" id="flush-headingSeven">
			      <button class="accordion-button collapsed border-bottom border-1" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSeven" aria-expanded="false" aria-controls="flush-collapseSeven">
			      	 <p class="gotu fw-bold">Q</p><p class="px-4">배송비가 무료라고 했는데, 택배기사가 배송비를 받아갔어요.</p>
			      </button>
			    </div>
		    	<div id="flush-collapseSeven" class="accordion-collapse collapse" aria-labelledby="flush-headingSeven" data-bs-parent="#accordionFlushExample">
			      <div class="accordion-body fs-6">
				    <p class="lh-base py-3">        
			   		이용에 불편을 드려 죄송합니다.<br>
					담당 배송기사의 착오로 배송비를 추가 부담하시는 경우,
					[고객센터 > 1:1 고객상담] 또는 고객 서비스 센터(수신자 요금 부담) 080-380-0114로 연락 주시면
					확인 후 신속하게 처리해 드리도록 하겠습니다.
					</p>
				  </div>
			    </div>
			</div>
			
			<div class="accordion-item" id="accordionFlushExample">
			    <div class="accordion-header fs-4" id="flush-headingEight">
			      <button class="accordion-button collapsed border-bottom border-1" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseEight" aria-expanded="false" aria-controls="flush-collapseEight">
			      	 <p class="gotu fw-bold">Q</p><p class="px-4">주문을 취소했는데 신용카드 결제는 취소가 되지 않았어요.</p>
			      </button>
			    </div>
		    	<div id="flush-collapseEight" class="accordion-collapse collapse" aria-labelledby="flush-headingEight" data-bs-parent="#accordionFlushExample">
			      <div class="accordion-body fs-6">
				    <p class="lh-base py-3">        
			   		카드 매출 취소는 즉시 접수되나, 카드사 사정에 따라 매출 취소 기간이 8일 정도 소요(평일 기준) 될 수 있습니다.<br>
					그리고 각 신용카드사 청구 작업이 끝난 이후에 취소 처리가 된 경우에는 납부 후 다음 달 카드 대금에서 상계처리될 수 있습니다.<br>
					카드대금 결제일에 따라 청구 작업 기간이 다른 점 양지 부탁드리며, 해당 카드사에서 확인 가능합니다.<br>
					</p>
				  </div>
			    </div>
			</div>
			
			<div class="accordion-item" id="accordionFlushExample">
			    <div class="accordion-header fs-4" id="flush-headingNine">
			      <button class="accordion-button collapsed border-bottom border-1" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseNine" aria-expanded="false" aria-controls="flush-collapseNine">
			      	 <p class="gotu fw-bold">Q</p><p class="px-4">피부 트러블이 생겼어요.</p>
			      </button>
			    </div>
		    	<div id="flush-collapseNine" class="accordion-collapse collapse" aria-labelledby="flush-headingNine" data-bs-parent="#accordionFlushExample">
			      <div class="accordion-body fs-6">
				    <p class="lh-base py-3">        
					화장품 이상반응은 제품에 함유된 성분 중 일부가 맞지 얺는 경우에 일어날 수 있으며. 이는 상품 자체 품질 문제로 볼수는 없습니다.<br>
					이외에 신체리듬 변화, 계절적인 요인, 외부조건 변화 등으로 인해서도 이와 같은 불편을 겪게될 수 있습니다.<br>
					<br>
					화장품으로 인한 이상인 경우에는 제품 사용을 중단하시면 차차 원래 피부 상태로 호전이 됩니다.<br>
					화장품을 사용한 뒤 불편을 겪고 계시다면 우선 제품 사용을 중단하시기 바랍니다.<br>
					당분간은 팩이나 마사지, 찜질방, 사우나 이용 등은 피하시는 것이 좋습니다.<br>
					
					제품에 대한 자세한 문의 및 상담은 글로우업 고객 상담실 1577-1234 (수신자요금부담)로 연락 주시면 친절히 상담해 드립니다.<br>
					</p>
				  </div>
			    </div>
			</div>
			
			<div class="accordion-item" id="accordionFlushExample">
			    <div class="accordion-header fs-4" id="flush-headingTen">
			      <button class="accordion-button collapsed border-bottom border-1" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTen" aria-expanded="false" aria-controls="flush-collapseTen">
			      	 <p class="gotu fw-bold">Q</p><p class="px-4">화장품의 유통기한은 어떻게 되나요?</p>
			      </button>
			    </div>
		    	<div id="flush-collapseTen" class="accordion-collapse collapse" aria-labelledby="flush-headingTen" data-bs-parent="#accordionFlushExample">
			      <div class="accordion-body fs-6">
				    <p class="lh-base py-3">        
					제품별 통상적 유통기한<br>
					▶메이크업베이스/파운데이션 (햇빛을 피하고 그늘진 서늘한 곳에 보관)<br>
					- 개봉 전 3년, 개봉 후 18개월<br>
					- 변질시: 색상이 연해지거나 불쾌한 냄새가 나며 액체일 경우 기름성분이 분리되거나 고체의경우 곰팡이가 생기는 현상<br>
					- 온도변화에 의하여 변질이 되기 쉬우므로 직사광선을 피해 온도변화가 적은 서늘한 곳에 보관<br>
					<br>
					▶립스틱 (햇빛을 피하고 그늘진 서늘한 곳에 보관)<br>
					- 개봉 전 3년, 개봉 후 18개월<br>
					- 변질시: 색상/향취가 변하거나 수분의 증발로 사용시 발림성이 나빠지는 현상<br>
					- 직사광선을 피하고 서늘한 곳에 보관 <br>
					참고하시어 구매하시기 바랍니다.<br>
					</p>
				  </div>
			    </div>
			</div>
			<!-- FAQ end -->
				
			</div><!-- contents end -->
	
			</div><!-- container end -->
		</div>
	</div>
</div><!-- container-fluid end -->
</body>
<jsp:include page="${context}/common/foot.jsp"></jsp:include>
</html>