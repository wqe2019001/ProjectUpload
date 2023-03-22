<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
		
	</script>
	
	<!-- 댓글 관련 자바스크립트 -->
<script>
/* 댓글 관련 스크립트 */
  $(document).ready(function() {
 
(function(e){var t,o={className:"autosizejs",append:"",callback:!1,resizeDelay:10},i='<textarea tabindex="-1" style="position:absolute; top:-999px; left:0; right:auto; bottom:auto; border:0; padding: 0; -moz-box-sizing:content-box; -webkit-box-sizing:content-box; box-sizing:content-box; word-wrap:break-word; height:0 !important; min-height:0 !important; overflow:hidden; transition:none; -webkit-transition:none; -moz-transition:none;"/>',n=["fontFamily","fontSize","fontWeight","fontStyle","letterSpacing","textTransform","wordSpacing","textIndent"],s=e(i).data("autosize",!0)[0];s.style.lineHeight="99px","99px"===e(s).css("lineHeight")&&n.push("lineHeight"),s.style.lineHeight="",e.fn.autosize=function(i){return this.length?(i=e.extend({},o,i||{}),s.parentNode!==document.body&&e(document.body).append(s),this.each(function(){function o(){var t,o;"getComputedStyle"in window?(t=window.getComputedStyle(u,null),o=u.getBoundingClientRect().width,e.each(["paddingLeft","paddingRight","borderLeftWidth","borderRightWidth"],function(e,i){o-=parseInt(t[i],10)}),s.style.width=o+"px"):s.style.width=Math.max(p.width(),0)+"px"}function a(){var a={};if(t=u,s.className=i.className,d=parseInt(p.css("maxHeight"),10),e.each(n,function(e,t){a[t]=p.css(t)}),e(s).css(a),o(),window.chrome){var r=u.style.width;u.style.width="0px",u.offsetWidth,u.style.width=r}}function r(){var e,n;t!==u?a():o(),s.value=u.value+i.append,s.style.overflowY=u.style.overflowY,n=parseInt(u.style.height,10),s.scrollTop=0,s.scrollTop=9e4,e=s.scrollTop,d&&e>d?(u.style.overflowY="scroll",e=d):(u.style.overflowY="hidden",c>e&&(e=c)),e+=w,n!==e&&(u.style.height=e+"px",f&&i.callback.call(u,u))}function l(){clearTimeout(h),h=setTimeout(function(){var e=p.width();e!==g&&(g=e,r())},parseInt(i.resizeDelay,10))}var d,c,h,u=this,p=e(u),w=0,f=e.isFunction(i.callback),z={height:u.style.height,overflow:u.style.overflow,overflowY:u.style.overflowY,wordWrap:u.style.wordWrap,resize:u.style.resize},g=p.width();p.data("autosize")||(p.data("autosize",!0),("border-box"===p.css("box-sizing")||"border-box"===p.css("-moz-box-sizing")||"border-box"===p.css("-webkit-box-sizing"))&&(w=p.outerHeight()-p.height()),c=Math.max(parseInt(p.css("minHeight"),10)-w||0,p.height()),p.css({overflow:"hidden",overflowY:"hidden",wordWrap:"break-word",resize:"none"===p.css("resize")||"vertical"===p.css("resize")?"none":"horizontal"}),"onpropertychange"in u?"oninput"in u?p.on("input.autosize keyup.autosize",r):p.on("propertychange.autosize",function(){"value"===event.propertyName&&r()}):p.on("input.autosize",r),i.resizeDelay!==!1&&e(window).on("resize.autosize",l),p.on("autosize.resize",r),p.on("autosize.resizeIncludeStyle",function(){t=null,r()}),p.on("autosize.destroy",function(){t=null,clearTimeout(h),e(window).off("resize",l),p.off("autosize").off(".autosize").css(z).removeData("autosize")}),r())})):this}})(window.jQuery||window.$);

var __slice=[].slice;(function(e,t){var n;n=function(){function t(t,n){var r,i,s,o=this;this.options=e.extend({},this.defaults,n);this.$el=t;s=this.defaults;for(r in s){i=s[r];if(this.$el.data(r)!=null){this.options[r]=this.$el.data(r)}}this.createStars();this.syncRating();this.$el.on("mouseover.starrr","span",function(e){return o.syncRating(o.$el.find("span").index(e.currentTarget)+1)});this.$el.on("mouseout.starrr",function(){return o.syncRating()});this.$el.on("click.starrr","span",function(e){return o.setRating(o.$el.find("span").index(e.currentTarget)+1)});this.$el.on("starrr:change",this.options.change)}t.prototype.defaults={rating:void 0,numStars:5,change:function(e,t){}};t.prototype.createStars=function(){var e,t,n;n=[];for(e=1,t=this.options.numStars;1<=t?e<=t:e>=t;1<=t?e++:e--){n.push(this.$el.append("<span class='glyphicon .glyphicon-star-empty'></span>"))}return n};t.prototype.setRating=function(e){if(this.options.rating===e){e=void 0}this.options.rating=e;this.syncRating();return this.$el.trigger("starrr:change",e)};t.prototype.syncRating=function(e){var t,n,r,i;e||(e=this.options.rating);if(e){for(t=n=0,i=e-1;0<=i?n<=i:n>=i;t=0<=i?++n:--n){this.$el.find("span").eq(t).removeClass("glyphicon-star-empty").addClass("glyphicon-star")}}if(e&&e<5){for(t=r=e;e<=4?r<=4:r>=4;t=e<=4?++r:--r){this.$el.find("span").eq(t).removeClass("glyphicon-star").addClass("glyphicon-star-empty")}}if(!e){return this.$el.find("span").removeClass("glyphicon-star").addClass("glyphicon-star-empty")}};return t}();return e.fn.extend({starrr:function(){var t,r;r=arguments[0],t=2<=arguments.length?__slice.call(arguments,1):[];return this.each(function(){var i;i=e(this).data("star-rating");if(!i){e(this).data("star-rating",i=new n(e(this),r))}if(typeof r==="string"){return i[r].apply(i,t)}})}})})(window.jQuery,window);$(function(){return $(".starrr").starrr()})

$('#new-review').autosize({append: "\n"});

var newReview = $('#new-review');
var ratingsField = $('#ratings-hidden');
var reviewBox = $('#post-review-box');
var openReviewBtn = $('#openReviewBtn');
var closeReviewBtn = $('#close-review-box');
var saveReviewBtn = $('#save-review');

openReviewBtn.click(function(e) {
	reviewBox.slideDown(400, function() {
    	$('#new-review').trigger('autosize.resize');
        newReview.focus();
    });
  	openReviewBtn.fadeOut(100);
  	closeReviewBtn.show();
  	saveReviewBtn.show();
});

closeReviewBtn.click(function(e) {
	e.preventDefault();
	reviewBox.slideUp(300, function() {
    	newReview.focus();
    	openReviewBtn.fadeIn(200);
    });
	closeReviewBtn.hide();
	saveReviewBtn.hide();
});

$('.starrr').on('starrr:change', function(e, value){
	ratingsField.val(value);
});
</script>
<!-- 댓글 목록 관련 스크립트 -->
<script type="text/javascript">
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
		<c:if test="${sessionScope.grade == 'M' || sessionScope.userCode == dsQnA.QNA_REG_ID}">
			<div class="d-flex justify-content-end">
				<button class="btn boardbtn" type="button" onclick="fn_qaList()">목록</button>
				<button class="btn boardbtn" type="button" onclick="fn_update()">글 수정하기</button>
				<button class="btn boardbtn" type="button" onclick="fn_delete()">글 삭제하기</button>
			</div>
		</c:if>
		<!-- 댓글 -->
		
<!-- <div class="container">
    <label for="content">댓글</label>
    <form name="commentInsertForm" id="commentInsertForm">
    <div>
        <input type="hidden" name="pno" id="pno" value="${dsQnA.QNA_NO}">
        <input type="text" name="content" id="content" placeholder="내용을 입력하세요">
        <button type="button" name="commentInsertBtn" id="commentInsertBtn">등록</button>
    </div>
    </form>
</div>
<hr>
<div class="container">
</div> !-->
<!--    <div class="commentList"></div>!-->
		<!-- board button area end -->
		
		<!-- 첨부파일 view -->
		
		<!--  답글 입력 토글 start -->
<div class="container review-box" >
	<div class="row">
		<div  class="col-xs-6">
	   		<h3>상품평 <span class="badge">${dsCommentList[0].COMMENT_COUNT}</span></h3>
		</div>
        <div class="col-xs-6 text-right">
               <a class="btn btn-lg" id="openReviewBtn">상품평 등록하기</a>
        </div>
	</div>
	<div class="row">
		<div class="col-md-12" id="post-review-box" style="display:none;">
            <form id="createComment" accept-charset="UTF-8" action="${context}/work/reply/createComment.do" method="post">
                <input id="ratings-hidden" name="markRating" type="hidden">
                <textarea class="form-control animated" cols="50" id="userComment" name="userComment" placeholder="상품평을 입력하세요..." rows="5"></textarea>
                <div class="text-right">
						<div class="stars starrr" data-rating="0"></div>
					<a href="#" id="close-review-box" class="btn">Cancel</a>
					<button id="save-review" class="btn" onclick="return fn_save()">Save</button>
                </div>
                <input type="block" id="qnaNo" name="qnaNo"  value="${dsQnA.QNA_NO}">
                <!--<input type="hidden" id="markYn" name="markYn" value="${dsProduct.MARK_YN}">  -->
            </form>
		</div>
	</div>
</div>
		<!-- 답글 입력 토글 end -->
	<!-- 답글 목록 start -->
	<div class="container">
		<c:if test="{dsQnA.QNA_NO}=={dsCommentList.QNA_NO}">
			<div class="row" style="border-top: 1px solid #D7D8DA; padding:34px 0;">
				<div class="col-xs-8 col-md-10 text-left">
				
					<h4>
						${dsCommentList.USER_ID}&nbsp;&nbsp;<span class="text-muted">${dsCommentList.COMMENT_DATE}</span>&nbsp;&nbsp;&nbsp;
						<span class="stars starrr replyStar" data-rating="${dsCommentList.MARK_RATING}"></span>
					</h4>
				</div>
				<div class="col-xs-4 col-md-2 text-right">
					<c:if test="${sessionScope.userCode == dsCommentList.USER_CODE}">
	               		<a data-original-title="Remove this user" data-toggle="tooltip" type="button" class="btn" 
	               		onclick="javascript:fn_remove('${dsCommentList.USER_COMMENT_NO}')">삭제</a>
	            	</c:if>
	            </div>
				<div class="col-xs-12 text-left">${dsCommentList.USER_COMMENT}</div>
			</div>
		</c:if>
	</div>
	<!-- 답글 목록 end -->
		
	</div><!-- Details end -->
</div> <!-- container end -->
<jsp:include page="${context}/common/foot.jsp"></jsp:include>
</body>
</html>