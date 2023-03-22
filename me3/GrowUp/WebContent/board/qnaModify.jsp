<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q &#38; A | 글 수정</title>
<script src="${context}/js/jquery-1.9.1.js"></script>
		<script type="text/javascript">
		$(document).ready(function(){
			fn_init();
	
			//글수정 기존 내용 셋팅
			fn_setDetailInfo();
		});
	
		function fn_setDetailInfo(){
			$("#qaTitle").val('${dsQnA.QNA_TITLE}');
			$("#qaNo").val('${dsQnA.QNA_NO}');
	
			var qaContent = '${dsQnA.QNA_CONTENT}';
	
			qaContent = qaContent.replace(/<br ?\/?>/gi, "\n");
	
			$("#qaContent").val(qaContent);
		}
	
		function fn_save(){
			if(!fn_validation()){
				return;
			}else{
				var qaContent = String($("#qaContent").val());
	
				qaContent = qaContent.replace(/\n/gi, "<br/>");
	
				$("#qaContent").val(qaContent);
	
		 		$("#qnaModify").submit();
			}
		}
	
	</script>
</head>
<body>
<jsp:include page="/common/top.jsp"></jsp:include>

<!-- title, visual start -->
<div class="titarea" style='background-image: url("${context}/img/subbg_qna.jpg");'></div>
<!-- title, visual end -->

<!-- Details -->
<div class="container footertop">
	<div class="px-5 py-5">
	
		<!-- board title start -->
		<div class="page-header">
			<div class="row py-5">
				<div class="d-flex flex-row mb-12">
					<p class="title p-2 fs-1 fw-bold gotu">Q &#38; A</p>
				</div>
			</div>
		</div>
		<!-- board title end -->
		
		<!-- board modify start -->
		<form id="qnaModify" class="form-horizontal boardwrite" method="post" action="${context}/work/board/qnaWrite.do" role="form">
			<div class="form-horizontal boardwrite">
				<div class="form-group mb-3">
					<label for="qaTitle" class="control-label fs-4 mb-2">제목</label>
					<input class="form-control fs-5" type="text" name="qaTitle" id="qaTitle" required="required" maxlength="50" autofocus="autofocus" placeholder="제목을 입력해주세요"/>
				</div>
				<div class="form-group mb-3 mt-5">
					<label for="qaContent" class="control-label fs-4 mb-2">내용</label>
					<textarea class="form-control fs-5" name="qaContent" id="qaContent" cols="10" rows="15" required="required" placeholder="내용을 입력해주세요"></textarea>
				</div>
				
				<!-- board button start -->
				<div class="d-flex justify-content-end">
					<button type="button" class="btn boardbtn" onclick="fn_save()">글 등록하기</button>
					<button type="button" class="btn boardbtn" onclick="fn_back()">취소</button>
				</div>
				<!-- board button end -->
				
				<!-- 이미지 업로드 -->
				
				<!--  답글 입력 토글 start -->
				<div class="container review-box" >
					<div class="row">
						<div  class="col-xs-6">
					   		<h3>답글 <span class="badge">${dsReplyList[0].REPLY_COUNT}</span></h3>
						</div>
				        <div class="col-xs-6 text-right">
				   			<c:if test="${dsProduct.SELL_YN == 'Y'}">
				               <a class="btn confirmbtn" href="#reviews-anchor" id="open-review-box">답글 등록하기</a>
							</c:if>
				        </div>
					</div>
					<div class="row">
						<div class="col-md-12" id="post-review-box" style="display:none;">
				            <form id="createReply" accept-charset="UTF-8" action="${context}/work/reply/createReply.do" method="post">
				                <input id="ratings-hidden" name="markRating" type="hidden">
				                <textarea class="form-control animated" cols="50" id="userReply" name="userReply" placeholder="상품평을 입력하세요..." rows="5"></textarea>
				                <div class="text-right">
									<c:if test="${dsProduct.MARK_YN == 'N'}">
										<div class="stars starrr" data-rating="0"></div>
									</c:if>
									<a href="#" id="close-review-box" class="btn">Cancel</a>
									<button id="save-review" class="btn" onclick="return fn_save()">Save</button>
				                </div>
				                <input type="hidden" id="productCode" name="productCode" value="${dsProduct.PRODUCT_CODE}">
				                <input type="hidden" id="markYn" name="markYn" value="${dsProduct.MARK_YN}">
				            </form>
						</div>
					</div>
				</div>
				<!-- 답글 입력 토글 end -->
				<!-- 답글 목록 start -->
				<div class="container">
					<c:forEach items="${dsReplyList}" var="dsReplyList">
						<div class="row" style="border-top: 1px solid #D7D8DA; padding:34px 0;">
							<div class="col-xs-8 col-md-10 text-left">
								<h4>
									${dsReplyList.USER_ID}&nbsp;&nbsp;<span class="text-muted">${dsReplyList.REPLY_DATE}</span>&nbsp;&nbsp;&nbsp;
									<span class="stars starrr replyStar" data-rating="${dsReplyList.MARK_RATING}"></span>
								</h4>
							</div>
							<div class="col-xs-4 col-md-2 text-right">
								<c:if test="${sessionScope.userCode == dsReplyList.USER_CODE}">
				               		<a data-original-title="Remove this user" data-toggle="tooltip" type="button" class="btn" 
				               		onclick="javascript:fn_remove('${dsReplyList.USER_REPLY_NO}')">삭제</a>
				            	</c:if>
				            </div>
							<div class="col-xs-12 text-left">${dsReplyList.USER_REPLY}</div>
						</div>
					</c:forEach>
				</div>
				<!-- 답글 목록 end -->
				
			</div>
		</form>
		<!-- board write end -->
		
	</div> <!-- Details end -->
</div> <!-- container end -->

<jsp:include page="${context}/common/foot.jsp"></jsp:include>
</body>
</html>