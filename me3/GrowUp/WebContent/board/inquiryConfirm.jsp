<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>1:1 문의 | 완료</title>
	

    <script>
    function fn_inquiryList(){
		location.href = "${context}/work/board/inquiry.do";
	}

    </script>
</head>
<c:set var="homeUrl">${context}/work/product/goMain.do</c:set>
<body>
<jsp:include page="/common/top.jsp"></jsp:include>
<div class="backgroundImg" style="background-image: url('${context}/img/subbg_inquiryconfirm.png');">

		<div class="container pt-5 pb-5 d-flex justify-content-center footertop">
				<!-- card start -->	
				<div class="card text-bg-light pt-5 px-5 shadow-sm">
					<div class="">
						<p class="fs-5 text-center pt-5">
							<span class="fw-bold fs-3 gotu">Glow up </span>을 이용해 주셔서 감사합니다.
						</p>
						<p class="fs-5 text-center pt-2">
							1:1 문의가 정상적으로 등록되었습니다.
						</p>
					</div>
					<!-- card button start -->	
					<div class="col-xs-4 d-flex justify-content-center pb-5">
						<button type="button" class="btn confirmbtn" onclick="fn_()">메인으로 돌아가기</button>
						<button type="button" class="btn confirmbtn" onclick="fn_inquiryList()">목록으로 돌아가기</button>
					</div>
					<!-- card button end -->	
				</div><!-- card end -->
				
	</div><!-- Details end -->
</div><!-- container end -->

<jsp:include page="${context}/common/foot.jsp"></jsp:include>
</body>
</html>