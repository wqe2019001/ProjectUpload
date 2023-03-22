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
	<title>구매완료</title>
	<!-- 구매완료창입니다. -->
	<link href="${context}/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">
	<link href="${context}/css/plugins/dataTables.bootstrap.css" rel="stylesheet">

    <link href="${context}/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${context}/font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<script src="${context}/js/jquery-1.9.1.js"></script>

    <script src="${context}/js/plugins/metisMenu/metisMenu.min.js"></script>

    <script src="${context}/js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="${context}/js/plugins/dataTables/dataTables.bootstrap.js"></script>

    <script src="${context}/js/sb-admin-2.js"></script>

    <script>
	var existFolder = '';
	var imageFolder = '';
	var path = '';

    $(document).ready(function() {
//         $('#dataTables-example').dataTable();

    });

    function fn_eval(self, resumePassYn, examNo){
   		$.ajax({
   			url:"${context}/work/applicant/updateEvalForResume.do?resumePassYn=" + resumePassYn + "&examNo=" + examNo,
   			success:function(result){
   				result = result.replace(/"/gi, "");
   				self.parent().next().children().html(result);
   			}
   		});
    }

    function fn_selEval(resumePassYn){
		var checked = $("input[name='chkBox']:checked");
		var checkedCnt = $("input[name='chkBox']:checked").length;

		var examNo = "";

		for(var i = 0; i < checkedCnt; i++){
			examNo = checked.eq(i).parent().parent().children("td").eq(3).html();
			$.ajax({
	   			url:"${context}/work/applicant/updateEvalForResume.do?resumePassYn=" + resumePassYn + "&examNo=" + examNo,
	   			async: false,
	   			success:function(result){
	   				result = result.replace(/"/gi, "");
	   				checked.eq(i).parent().parent().children("td").eq(10).html(result);
	   			}
	   		});
		}
    }

    function fn_resumeDetail(self){
    	var examNo = self.parent().parent().children("td").eq(3).html();

    	location.href = "${context}/work/applicant/retrieveResumeDetail.do?examNo=" + examNo;
    }

    function fn_save(){
    	var examNo = '${dsSellList[0].examNo}';

		if(confirm("서류심사를 완료하시겠습니까?")){
			location.href = "${context}/work/incruit/updateIStatusForResume.do?examNo=" + examNo;
		}
    }

    function fn_finalBuy(paramSellCode, paramSellCount, paramProductCode){
		if(confirm("결제하시겠습니까?")){
			location.href = "${context}/work/sell/updateFinalBuy.do?sellCode=" + paramSellCode + "&sellCount=" + paramSellCount + "&productCode=" + paramProductCode;
		}
    }

    function fn_buyList(){
    	location.href = "${context}/work/sell/retrieveBuyList.do";
    }

    function fn_review(paramProductCode){
    	location.href = "${context}/work/product/retrieveProduct.do?productCode=" + paramProductCode;
    }

    </script>
</head>
<body>
<jsp:include page="/common/top.jsp"></jsp:include>
<div class="backgroundImg" style="background-image: url('${context}/img/subbg_sellconfirm.png');">

		<div class="container pt-5 pb-5 d-flex justify-content-center footertop">
				<!-- card start -->	
				<div class="card text-bg-light pt-5 px-5">
					<div class="">
						<p class="fs-5 text-center pt-5">
							<span class="fw-bold fs-3 gotu">Glow up </span>을 이용해 주셔서 감사합니다.
						</p>
						<p class="fs-5 text-center pt-2">
							1:1문의가 정상적으로 등록되었습니다.
						</p>
					</div>
					<!-- card button start -->	
					<div class="col-xs-4 d-flex justify-content-center pb-5">
						<button type="button" class="btn confirmbtn" onclick="fn_buyList()">메인으로 돌아가기</button>
						<button type="button" class="btn confirmbtn" onclick="fn_review('${productCode}')">목록으로 돌아가기</button>
					</div>
					<!-- card button end -->	
				</div><!-- card end -->
				
	</div><!-- Details end -->
</div><!-- container end -->

<jsp:include page="${context}/common/foot.jsp"></jsp:include>
</body>
</html>