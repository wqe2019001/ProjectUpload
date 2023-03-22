<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Q &#38; A | 내용보기</title>
	<script src="${context}/js/jquery-1.9.1.js"></script>
	<script type="text/javascript">
		function fn_qnaList(){
			location.href = "${context}/work/board/qna.do";
		}
		//글 삭제
		function fn_delete(){
			var qaNo = '${dsQnA.QNA_NO}';
	
			if(confirm("정말 글을 삭제하시겠습니까?")){
				location.href = "${context}/work/board/deleteQnA.do?qaNo=" + qaNo;
			}
		}
		
		//글 수정
		function fn_update(){
			var qaNo = '${dsQnA.QNA_NO}';
	
			location.href = "${context}/work/board/qnaModify.do?qaNo=" + qaNo;
		}
		//답글
	    function fn_reply(paramuserCode){
	    	location.href = "${context}/work/board/retrieve.do?userCode=" + paramProductCode;
	    }
	</script>
</head>
<body>
<jsp:include page="${context}/common/top.jsp"></jsp:include>

<!-- title, visual start -->
<div class="titarea" style='background-image: url("${context}/img/subbg_qna.jpg");'></div>
<!-- title, visual end -->

<!-- Detail -->
<div class="container mb-5">
	<div class="px-5 py-5">
	
		<!-- board title start -->
		<div class="page-header">
			<div class="row py-5">
				<div class="d-flex flex-row mb-12">
					<p class="title p-2 fs-1 fw-bold">Q &#38; A</p>
				</div>
			</div>
		</div>
		<!-- board title end -->

		<!-- board view start -->
		<div class="border-bottom">
			<div class="d-flex flex-row fs-4 mb-2 p-2 ">
				<div class="col-md-10 justify-content-start px-3">${dsQnA.QNA_TITLE}</div>
				<div class="col-md-2 justify-content-end">${dsQnA.USER_NAME}</div>
			</div>
		</div>
		<div class="d-flex flex-row fs-5 mt-2">
			<div class="p-2 px-4">${dsQnA.QNA_CONTENT}</div>
		</div>
		<!-- board view end -->
		
		<!-- board button area start -->
		<c:if test="${sessionScope.grade == 'A' || sessionScope.userCode == dsQnA.QNA_REG_ID}">
			<div class="d-flex justify-content-end">
				<button class="btn boardbtn" type="button" onclick="fn_qaList()">목록</button>
				<button class="btn boardbtn" type="button" onclick="fn_update()">글 수정하기</button>
				<button class="btn boardbtn" type="button" onclick="fn_delete()">글 삭제하기</button>
			</div>
		</c:if>
		<!-- board button area end -->
		
		<!-- 첨부파일 view -->
		
		<!--  답글 입력 토글 start -->
		<!-- <div class="container review-box" >
			<div class="row">
				<div  class="col-xs-6">
			   		<p class="fs-3 fw-bold">답글 <span class="badge">${dsReplyList[0].REPLY_COUNT}</span></p>
				</div>
	   			<c:if test="${dsQnA.QNA_YN == 'Y'}">
	   			<div class="col-xs-6 d-flex justify-content-end">
	               <a class="btn confirmbtn" type="button" href="#reviews-anchor" id="open-review-box"  onclick="fn_open()">답글등록하기</a>
				</div>
				</c:if>
			</div>
			<div class="row">
				<div class="col-md-12" id="post-review-box" style="display:none;">
		            <form id="createReply" accept-charset="UTF-8" action="${context}/work/reply/createReply.do" method="post">
		                <input id="ratings-hidden" name="markRating" type="hidden">
		                <textarea class="form-control animated" cols="50" id="qnaReply" name="qnaReply" placeholder="답글을 입력하세요..." rows="5"></textarea>
		                <div class="text-right">
							<c:if test="${dsQnA.MARK_YN == 'N'}">
								<div class="stars starrr" data-rating="0"></div>
							</c:if>
							<a href="#" id="close-review-box" class="btn">Cancel</a>
							<button id="save-review" class="btn" onclick="return fn_save()">Save</button>
		                </div>
		                <input type="hidden" id="userCode" name="userCode" value="${dsQnA.USER_CODE}">
		                <input type="hidden" id="markYn" name="markYn" value="${dsQnA.MARK_YN}">
		            </form>
				</div>
			</div>
		</div>
		-->
		<!-- 답글 입력 토글 end -->
		<!-- 답글 목록 start -->
		<!-- 
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
		               		onclick="javascript:fn_remove('${dsReplyList.QNA_REPLY_NO}')">삭제</a>
		            	</c:if>
		            </div>
					<div class="col-xs-12 text-left">${dsReplyList.QNA_REPLY}</div>
				</div>
			</c:forEach>
		</div>
		 -->
		<!-- 답글 목록 end -->
		
	</div><!-- Details end -->
</div> <!-- container end -->
<jsp:include page="${context}/common/foot.jsp"></jsp:include>
</body>
</html>