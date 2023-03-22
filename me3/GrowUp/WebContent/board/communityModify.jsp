<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>커뮤니티 | 글 수정</title>
	<script src="${context}/js/jquery-1.9.1.js"></script>
		<script type="text/javascript">
		$(document).ready(function(){
			fn_init();
	
			//글수정 기존 내용 셋팅
			fn_setDetailInfo();
		});
	
		function fn_setDetailInfo(){
			$("#comuTitle").val('${dsCommunity.COMU_TITLE}');
			$("#comuNo").val('${dsCommunity.COMU_NO}');
	
			var comuContent = '${dsCommunity.COMU_CONTENT}';
	
			comuContent = comuContent.replace(/<br ?\/?>/gi, "\n");
	
			$("#comuContent").val(comuContent);
		}
	
		function fn_save(){
			if(!fn_validation()){
				return;
			}else{
				var comuContent = String($("#comuContent").val());
	
				comuContent = comuContent.replace(/\n/gi, "<br/>");
	
				$("#comuContent").val(comuContent);
	
		 		$("#communityModify").submit();
			}
		}
	
	</script>
	
</head>
<body>
<jsp:include page="${context}/common/top.jsp"></jsp:include>

<!-- title, visual start -->
<div class="titarea" style='background-image: url("${context}/img/subbg_event.jpg");'></div>
<!-- title, visual end -->

<!-- Detail -->
<div class="container footertop">
	<div class="px-5 py-5">
	
		<!-- board title start -->
		<div class="page-header">
			<div class="row py-5">
				<div class="d-flex flex-row mb-12">
					<p class="title p-2 fs-1 fw-bold">커뮤니티</p>
				</div>
			</div>
		</div>
		<!-- board title end -->
		
		<!-- board modify start -->
		<form id="communityModify" method="post" action="${context}/work/board/communityModify.do?comuNo=${dsCommunity.COMU_NO}" role="form">
			<div class="form-horizontal boardwrite">
				<div class="form-group">
					<label for="comuTitle" class="control-label fs-4 mb-2">제목</label>
					<input class="form-control" type="text" name="comuTitle" id="comuTitle" required="required" maxlength="50" autofocus="autofocus">
				</div>
				<div class="form-group">
					<label for="comuContent" class="control-label fs-4 mb-2 mt-5">내용</label>
					<textarea class="form-control" name="comuContent" id="comuContent" cols="10" rows="15" required="required"></textarea>
				</div>
				
				<!-- board button start -->
				<div class="col-xs-4 d-flex justify-content-end">
					<button type="button" class="btn boardbtn" onclick="fn_save()">글 등록하기</button>
					<button type="button" class="btn boardbtn" onclick="fn_back()">취소</button>
				</div>
				
			</div>
		</form>
		<!-- board modify end -->
		
	</div><!-- Details end -->
</div><!-- container end -->

<jsp:include page="${context}/common/foot.jsp"></jsp:include>
</body>
</html>