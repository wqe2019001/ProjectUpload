<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>공지사항 | 내용보기</title>
	<script src="${context}/js/jquery-1.9.1.js"></script>
	<script type="text/javascript">
		function fn_noticeList(){
			location.href = "${context}/work/board/notice.do";
		}
		//글 삭제
		function fn_delete(){
			var noticeNo = '${dsNotice.NTC_NO}';
	
			if(confirm("정말 글을 삭제하시겠습니까?")){
				location.href = "${context}/work/board/deleteNotice.do?ntcNo=" + noticeNo;
			}
		}
		
		//글 수정
		function fn_update(){
			var noticeNo = '${dsNotice.NTC_NO}';
	
			location.href = "${context}/work/board/noticeModify.do?ntcNo=" + noticeNo;
		}
	</script>
</head>
<body>
<jsp:include page="${context}/common/top.jsp"></jsp:include>

<!-- title, visual start -->
<div class="titarea" style='background-image: url("${context}/img/subbg_notice.jpg");'></div>
<!-- title, visual end -->

<!-- Detail -->
<div class="container footertop">
	<div class="px-5 py-5">
	
		<!-- board title start -->
		<div class="page-header">
			<div class="row py-5">
				<div class="d-flex flex-row mb-12">
					<p class="title p-2 fs-1 fw-bold">공지사항</p>
				</div>
			</div>
		</div>
		<!-- board title end -->

		<!-- board view start -->
		<div class="border-bottom">
			<div class="d-flex flex-row fs-4 mb-2 p-2 ">
				<div class="col-md-10 justify-content-start px-3">${dsNotice.NTC_TITLE}</div>
				<div class="col-md-2 justify-content-end">${dsNotice.USER_NAME}</div>
			</div>
		</div>
		<div class="d-flex flex-row fs-5 mt-2">
			<div class="p-2 px-4">${dsNotice.NTC_CONTENT}</div>
		</div>
		<!-- board view end -->
		
		<!-- board button area start -->
		<c:if test="${sessionScope.grade == 'A'}">
			<div class="d-flex justify-content-end">
				<button class="btn boardbtn" type="button" onclick="fn_noticeList()">목록</button>
				<button class="btn boardbtn" type="button" onclick="fn_update()">글 수정하기</button>
				<button class="btn boardbtn" type="button" onclick="fn_delete()">글 삭제하기</button>
			</div>
		</c:if>
		<!-- board button area end -->
		
	</div><!-- Details end -->
</div> <!-- container end -->
<jsp:include page="${context}/common/foot.jsp"></jsp:include>
</body>
</html>