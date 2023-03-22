<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
   <meta charset="UTF-8" />
   <meta http-equiv="X-UA-Compatible" content="IE=edge" />
   <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   <title>Glow up</title>
	<!-- CSS only -->
	<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css">
	<!-- JavaScript Bundle with Popper -->
	<script src="${context}/js/jquery-1.9.1.js"></script>
	<script src="${context}/js/jquery.tubular.1.0.js"></script>
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<script src="${context}/js/owl.carousel.js"></script>

   <script type="text/javascript">
	// 배경 동영상 추가  
	$('document').ready(function() {
	var options = { videoId: '_COg3nQ7qcE', start: 0};
	$('#maintub').tubular(options);
	
	$('.owl-carousel').owlCarousel({
	    loop:true,
	    margin:50,
	    responsiveClass:true,
	    responsive:{
	        0:{
	            items:2,
	            nav:true
	        },
	        600:{
	            items:3,
	            nav:false
	        },
	        1400:{
	            items:5,
	            nav:true,
	            loop:false
	        }
	    }
	})
	
	});
	
   </script>

<style type="text/css">

	.maintub{
		z-index: 0;
	}

	.mainsub{
	font-size: 6vw;
	padding-top: 200px;
	margin-bottom: 78px;
	}
	
	.rotate {
    position: absolute;
    right: 10%;
    animation: rotate_image 12s linear infinite;
    transform-origin: 50% 50%;
	}


	@keyframes rotate_image{
	    100% {
	        transform: rotate(360deg);
	    }
	}
</style>
</head>
<c:set var="productManageUrl">${context}/work/product/retrieveProductListForManage.do</c:set>
<c:set var="statisticsForProductUrl">${context}/work/sell/retrieveStatisticsForProduct.do</c:set>
<c:set var="statisticsForStockUrl">${context}/work/product/retrieveStatisticsForStock.do?productCategoryCd=E</c:set>
<body>
<jsp:include page="${context}/common/top.jsp"></jsp:include>
<!-- 메인 백그라운드 배경 튜블라 적용 -->
<c:if test="${sessionScope.grade != 'A'}">
	<div id="maintub">
		<div class="container footertop">
			<div class="row item" data-aos="fade-up">
			<div class="mainsub gotu">Glow up<img src="/img/main/txt_animation.png" alt="돌아가는 로고" class="rotate"> </div>
				<h4 class="col-sm-4 lh-lg">
					아래 사이트에서도 글로우업에 대한 정보를 확인하실 수 있습니다. <br/>
					<br/>
				    <a href="#">+ 브랜드 사이트 방문하기 </a> 
				</h4>
				<div class="col-sm-8">
					<img src="/img/main/main1.png" alt="메인 립" class="img-fluid rounded-3">
				</div>
			</div> 
			
			<div class="mainsub gotu">Best Product</div>
			 
			<div class="row item" data-aos="fade-up">
				<h4 class="col-sm-4 lh-lg">
					그 시절 그대로,<br/>
					변하지 않는 아름다움을 만들어보세요.<br>
					<br/>
					<a href="#" class="gotu">+ PRODUCT </a>
				</h4>
				<div class="col-sm-4">
					<img src="/img/main/mainbest1.png" alt="메인 팔레트1" class="img-fluid rounded-3 item" data-aos="fade-down-right"  data-aos-duration="2000">
					<img style="margin-top: 100px" src="/img/main/mainbest3.png" alt="메인 팔레트2" class="img-fluid rounded-3 item" data-aos="fade-down-right"  data-aos-duration="1000">
				</div>
				<div class="col-sm-4" style="margin-top: 259px;">
					<img src="/img/main/mainbest2.png" alt="메인 팔레트3" class="img-fluid rounded-3 item" data-aos="fade-down-left"  data-aos-duration="1000">
					<img style="margin-top: 100px" src="/img/main/mainbest4.png" alt="메인 팔레트4" class="img-fluid rounded-3 item" data-aos="fade-down-left" data-aos-duration="1000">
				</div>
			</div> 
			
			<div class="mainsub item gotu" data-aos="fade-up">Our Business</div>
			<div><img src="/img/main/mainbusiness1.png" class="img-fluid my-4 rounded-3 item" data-aos="fade-right" data-aos-duration="1000" alt="비즈니스1"></div> 
			<div><img src="/img/main/mainbusiness2.png" class="img-fluid my-4 rounded-3 item" data-aos="fade-left" data-aos-duration="1000" alt="비즈니스2"></div> 
			<div><img src="/img/main/mainbusiness3.png" class="img-fluid my-4 rounded-3 item" data-aos="fade-right" data-aos-duration="1000" alt="비즈니스3"></div>
		
			<h2 style="margin-top: 195px;" class="gotu">@glowup_official</h2>
			<div class="mainsub pt-0 gotu">
				Instagram
			</div> 
			<div class="instaimg owl-carousel item" data-aos="fade-up">
				<div><img src="/img/main/maininsta1.png" class="rounded-3"></div>
				<div><img src="/img/main/maininsta2.png" class="rounded-3"></div>
				<div><img src="/img/main/maininsta3.png" class="rounded-3"></div>
				<div><img src="/img/main/maininsta4.png" class="rounded-3"></div>
				<div><img src="/img/main/maininsta5.png" class="rounded-3"></div>
			</div>
		</div>
		<jsp:include page="${context}/common/foot.jsp"></jsp:include>
	</div>
	</c:if>
	<!-- 관리자 페이지 -->
	<c:if test="${sessionScope.grade == 'A'}">
	<div class="container adminmode">
	    <div class="row">
	         <div class="col-md-4 text-center adminlink" onclick="location.href='${productManageUrl}'">
	         <div class="img-circle">
	            <span>
	               <i class="fa-solid fa-store fa-8x" style="color:white;"></i>
	            </span>
	         </div>
	         <h1>재고관리</h1>
	      </div>
	         <div class="col-md-4 text-center adminlink" onclick="location.href='${statisticsForProductUrl}'">
	            <div class="img-circle">
	               <span>
	                  <i class="fa-solid fa-chart-pie fa-8x" style="color:white;"></i>
	            </span>
	          </div>
	         <h1>매출통계</h1>
	      </div>
	         <div class="col-md-4 text-center adminlink" onclick="location.href='${statisticsForStockUrl}'">
	            <div class="img-circle">
	               <span>
	                  <i class="fa-solid fa-boxes-stacked fa-8x" style="color:white;"></i>
	            </span>
	           </div>
	         <h1>재고현황</h1>
	      </div> 
	   </div>
	</div>
   	<jsp:include page="${context}/common/foot.jsp"></jsp:include>
	</c:if>
<script>
  AOS.init();
</script>
</body>
</html>