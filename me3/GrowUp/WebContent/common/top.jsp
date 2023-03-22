<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
	<title>Glow up</title>
	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<link href="${context}/css/common.css" rel="stylesheet">
	<!-- fontawesome6.3.0 관리자 페이지에 사용 -->
	<link href="${context}/css/fontawesome6.3.0/solid.css" rel="stylesheet">
	<link href="${context}/css/fontawesome6.3.0/v4-shims.css" rel="stylesheet" />  
	<!-- JavaScript Bundle with Popper -->
	<script defer src="${context}/js/fontawesome6.3.0/all.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
	<script src="${context}/js/common.js"></script>
</head>

<!-- URL 추가 -->
<c:set var="homeUrl">${context}/work/product/goMain.do</c:set>
<c:set var="noitceUrl">${context}/work/board/notice.do</c:set>
<c:set var="cmmuUrl">${context}/work/board/community.do</c:set>
<c:set var="inquiryUrl">${context}/work/board/inquiry.do</c:set>
<c:set var="FAQUrl">${context}/FAQ/FAQ.jsp</c:set>
<c:set var="qnaUrl">${context}/work/board/qna.do</c:set>

<c:set var="loginUrl">${context}/user/login.jsp</c:set>
<c:set var="eventUrl">${context}/work/board/event.do</c:set>

<c:set var="eyeUrl">${context}/work/product/retrieveProductList.do?category=E</c:set>
<c:set var="lipUrl">${context}/work/product/retrieveProductList.do?category=L</c:set>
<c:set var="faceUrl">${context}/work/product/retrieveProductList.do?category=F</c:set>

<body>
<nav class="navbar bg-light opacity-75 fixed-top ">
  <div class="container">
		<a class="navbar-brand" href="${homeUrl}"><span class="fs-2 fw-bold gotu">Glow up</span></a>
	<div class="d-flex flex-row">
		<div class="p-2 text-center h6 pt-3">
			<c:if test="${sessionScope.id == null}">
				<a class="nav-link active" href="${context}/work/user/createUser.do"><i class="fa-solid fa-user-plus"></i>
				<span class="gotu">회원가입</span></a>
			</c:if>
		</div>
		<div class="p-2 text-center h6 pt-3">
			<c:if test="${sessionScope.id != null && sessionScope.grade != 'A'}">
				<a class="nav-link active" href="${context}/work/cart/retrieveCartList.do"><i class="fa-solid fa-cart-shopping"></i>
				<span class="gotu">장바구니</span></a>
			</c:if>
		</div>
		<div class="p-2 text-center h6 pt-3">
			<c:if test="${sessionScope.id == null}">
				<a class="nav-link active" href="${context}/user/login.jsp"><i class="fa-solid fa-right-to-bracket"></i>
				<span class="gotu">로그인</span></a>
			</c:if>
		</div>
		<div class="p-2 text-center h6 pt-3">
			<c:if test="${sessionScope.id != null}">
				<a class="nav-link active" href="${context}/work/user/logout.do"><i class="fa-solid fa-right-from-bracket"></i>
				<span class="gotu">로그아웃</span></a>
			</c:if>
		</div>
		<div class="p-2">
		    <button class="navbar-toggler border-0" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		</div>
	</div>

    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
		<div class="offcanvas-header">
	        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">
				<a class="navbar-brand" href="${homeUrl}"><span class="fs-2 fw-bold gotu">Glow up</span></a>
	        </h5>
			<button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
     	</div>        

      <!-- 오프캔버스 메뉴 -->
      <div class="offcanvas-body">
          	<ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
	          	<li class="gotu mt-4 nav-item fs-5 fw-bold">SHOP</li>
				
				<li class="nav-item"><a class="nav-link active"  onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${eyeUrl}')">섀도우</a></li>
				<li class="nav-item"><a class="nav-link active" onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${lipUrl}')">립스틱</a></li>
				<li class="nav-item"><a class="nav-link active" onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${faceUrl}')">파운데이션</a></li>
	          </ul>
				
          	<ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
	          	<li class="gotu mt-4 fs-5 fw-bold">SERVICE</li>
				
				<li class="nav-item"><a class="nav-link active" href="${context}/work/board/notice.do">공지사항</a></li>
				<li class="nav-item"><a class="nav-link active" href="${context}/work/board/community.do">커뮤니티</a></li>
				<li class="nav-item"><a class="nav-link active" href="#">회사소개 </a></li>
	          </ul>
	          	
          	<ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
	          	<li class="gotu mt-4 fs-5 fw-bold">CUSTOMER</li>
				
				<li class="nav-item"><a class="nav-link active" onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${eventUrl}')">이벤트</a></li>
				<li class="nav-item"><a class="nav-link active" href="${context}/work/board/qna.do">Q & A</a></li>
				<li class="nav-item"><a class="nav-link active" href="${context}/FAQ/FAQ.jsp">FAQ</a></li>
	          </ul>
				
          	<ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
			<c:if test="${sessionScope.id != null && sessionScope.grade != 'A'}">
	          	<li class="gotu mt-4 fs-5 fw-bold">MY PAGE</li>
	          	
			    <li class="nav-item"><a class="nav-link active" href="${context}/work/sell/retrieveBuyList.do">구매내역</a></li>
			    <li class="nav-item"><a class="nav-link active" href="${context}/work/user/updateUser.do">정보수정</a></li>
			</c:if>

			<c:if test="${sessionScope.id != null || sessionScope.grade == 'A'}">
				<li class="pointcursor"><a class="nav-link active" href="${context}/work/board/inquiryList.do">1 : 1 문의</a></li>
			</c:if>
			</ul>
        </div>
      </div>
	</div>
</nav>

	<div class= "container">
	  	<c:if test="${sessionScope.id != null && sessionScope.grade == 'A'}">
	  		<h1 class="admintitle"><mark>관리자 화면</mark></h1>
	  	</c:if>
	</div>

</body>
</html>