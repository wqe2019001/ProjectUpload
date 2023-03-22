<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Glow up</title>
<!-- 채널톡 챗봇 연동 -->
	<c:if test="${sessionScope.id == null}">
		<script>
		  (function(){var w=window;if(w.ChannelIO){return w.console.error("ChannelIO script included twice.")}var ch=function(){ch.c(arguments)};ch.q=[];ch.c=function(args){ch.q.push(args)};w.ChannelIO=ch;function l(){if(w.ChannelIOInitialized){return}w.ChannelIOInitialized=true;var s=document.createElement("script");s.type="text/javascript";s.async=true;s.src="https://cdn.channel.io/plugin/ch-plugin-web.js";var x=document.getElementsByTagName("script")[0];if(x.parentNode){x.parentNode.insertBefore(s,x)}}if(document.readyState==="complete"){l()}else{w.addEventListener("DOMContentLoaded",l);w.addEventListener("load",l)}})();
		
		  ChannelIO('boot', {
		    "pluginKey": "c3d98b1c-a99d-4111-9531-8fa51ea5da14"
		  });
		</script>
	</c:if>
	
	<c:if test="${sessionScope.id != null && sessionScope.grade != 'A'}">
		<script>
		  (function(){var w=window;if(w.ChannelIO){return w.console.error("ChannelIO script included twice.")}var ch=function(){ch.c(arguments)};ch.q=[];ch.c=function(args){ch.q.push(args)};w.ChannelIO=ch;function l(){if(w.ChannelIOInitialized){return}w.ChannelIOInitialized=true;var s=document.createElement("script");s.type="text/javascript";s.async=true;s.src="https://cdn.channel.io/plugin/ch-plugin-web.js";var x=document.getElementsByTagName("script")[0];if(x.parentNode){x.parentNode.insertBefore(s,x)}}if(document.readyState==="complete"){l()}else{w.addEventListener("DOMContentLoaded",l);w.addEventListener("load",l)}})();
			
		  ChannelIO('boot', {
		    "pluginKey": "c3d98b1c-a99d-4111-9531-8fa51ea5da14"
		  });
		</script>
	</c:if>
</head>

<c:set var="homeUrl">${context}/work/product/goMain.do</c:set>
<c:set var="noitceUrl">${context}/work/board/notice.do</c:set>
<c:set var="cmmuUrl">${context}/work/board/community.do</c:set>
<c:set var="inquiryUrl">${context}/work/board/inquiry.do</c:set>
<c:set var="FAQUrl">${context}/FAQ/FAQ.jsp</c:set>
<c:set var="qnaUrl">${context}/work/board/qna.do</c:set>

<body>
<footer class="footer bg-light opacity-75 py-5">
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-3">
				<a href="${homeUrl}" class="pb-2 gotu fw-bold fs-1">Glow up</a>
					<p class="fw-bold fs-6 pt-4 pb-1">글로우업과 함께 당신만의 팔레트를 완성해보세요. </p>
				<div class="fs-4 pb-2">
		      		<a href="#" class="px-2"><i class="fa-solid fa-comment"></i></a>
		      		<a href="#" class="px-2"><i class="fa-brands fa-youtube"></i></a>
		      		<a href="#" class="px-2"><i class="fa-brands fa-tiktok"></i></a>
		      		<a href="#" class="px-2"><i class="fa-brands fa-instagram"></i></a>
		      		<a href="#" class="px-2"><i class="fa-brands fa-facebook"></i></a>
				</div>
			</div>
			
			<div class="col-sm-12 col-md-2">
				<ul class="pb-2">
				<c:if test="${sessionScope.id != null && sessionScope.grade == 'A'}">
					<li class="fw-bold fs-5 pb-1">관리자 메뉴</li>
					<li><a class="nav-link active" href="${context}/work/product/retrieveProductListForManage.do">재고관리</a></li>
					<li><a class="nav-link active" href="${context}/work/sell/retrieveStatisticsForProduct.do">매출통계</a></li>
					<li><a class="nav-link active" href="${context}/work/product/retrieveStatisticsForStock.do?productCategoryCd=E">재고현황</a></li>
				</c:if>
				</ul>
			</div>
			
			<div class="col-sm-12 col-md-2">
				<ul class="pb-2">
					<li class="fw-bold fs-5 pb-1">서비스</li>
					<li><a href="${context}/work/board/notice.do">공지사항</a></li>
					<li><a href="${context}/work/board/community.do">커뮤니티</a></li>
					<li><a href="http://localhost:3000">회사소개 </a></li>
				</ul>
			</div>
			
			<div class="col-sm-12 col-md-2">
				<ul class="pb-2">
					<li class="fw-bold fs-5 pb-1">고객센터</li>
					<li><a href="${context}/work/board/qna.do">Q & A</a></li>
					<li><a href="${context}/FAQ/FAQ.jsp">FAQ</a></li>
				</ul>
			</div>
			
			<div class="col-sm-12 col-md-3">
				<ul class="pb-2">
					<li class="fw-bold fs-5 pb-1">정보</li>
					<li>email : <a>glowup@glowup.co.kr</a></li>
					<li>tel : <a>1577-1234</a></li>
				</ul>
				<ul class="pb-2">
					<li>상담시간 : <a>AM 09:00 ~ PM 05:00</a></li>
					<li>월 ~ 금 <a>(주말, 공휴일 제외)</a></li>
				</ul>
			</div>
			
		</div>
	</div>
</footer>
</body>
</html>