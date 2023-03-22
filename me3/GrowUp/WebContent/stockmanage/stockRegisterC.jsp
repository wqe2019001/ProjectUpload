<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="description" content="stockRegisterC.jsp">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ADMIN - 신규상품등록</title>
	<script src="${context}/js/jquery-1.9.1.js"></script>
	<!-- 필수입력 미입력시 빨간색배경 fadeout 효과 -->
    <script src="//code.jquery.com/ui/1.11.3/jquery-ui.js"></script>
    <!-- 이미지업로드시 업로드된 이미지로 교체 -->
	<script src="${context}/js/jquery.form.js"></script>
    <script>
    var productCategoryCd;
    var imageFolder;

    $(document).ready(function() {
        fn_init();
    });

	function fn_save(){
		if(confirm("등록하시겠습니까?")){
			if(!fn_validation()) return;

			alert("상품이 등록되었습니다.");

			$("#createProduct").submit();
		}
	}

	function fn_setProductCategoryCd(){
		productCategoryCd = $("#productCategoryCd").val();
		
		if(productCategoryCd == 'E'){
			imageFolder = "eyeImg";
		} else if(productCategoryCd == 'F'){
			imageFolder = "faceImg";
		} else if(productCategoryCd == 'L'){
			imageFolder = "lipImg";
		}

		$("#imageFolder").val(imageFolder);
	}

	function fn_upload(){
		$("#ajaxform").ajaxSubmit({
	        type: "POST",
	        dataType: 'text',
	        url: $("#ajaxform").attr("action"),
	        data: $("#ajaxform").serialize(),
	        success: function (data) {
	        	data2 = data.replace(/"/gi, "");
	        	var imageUrl = "${context}/" + imageFolder + "/" + data2;
	        	$("#pic").attr("src", imageUrl);
	        	$("#productImage").val(data2);
	        },
	        error: function (xhr, status, error) {
	            alert(error);
	        }
	    });
	}

	function fn_checkCategory(){
		if(productCategoryCd == undefined){
			alert("분류를 먼저 선택해주세요.");
			return false;
		}
	}
    </script>
</head>
<body>
<jsp:include page="${context}/common/top.jsp"></jsp:include>
<div class="container">
	<!-- board title start -->
	<div class="py-5">
		<p class="title fs-1 fw-bold">신규상품등록</p>
	</div>
	<!-- board title end -->
	<form id="createProduct" method="post" action="${context}/work/product/createProduct.do" role="form">
		<div class="form-horizontal">

			<div class="form-group row mb-3">
				<label for="productCategoryCd" class="col-form-label col-md-2">카테고리</label>
				<div class="col-md-10">
		        	<select class="form-select" id="productCategoryCd" name="productCategoryCd" required="required" onchange="fn_setProductCategoryCd()">
						<c:forEach items="${dsCode1}" var="code1">
							<option value="${code1.commCd}">${code1.commCdNm}</option>
						</c:forEach>
		     		</select>
	     		</div>
			</div>
			<div class="form-group row mb-3">
				<label for="productName" class="col-form-label col-md-2">상품명 한글</label>
				<div class="col-md-10">
					<input class="form-control" type="text" name="productName" id="productName" required="required" autofocus="autofocus"/>
				</div>
			</div>
			<div class="form-group row mb-3">
				<label for="productName" class="col-form-label col-md-2">상품명 영문</label>
				<div class="col-md-10">
					<input class="form-control" type="text" name="productNameEng" id="productNameEng" required="required" autofocus="autofocus"/>
				</div>
			</div>
			
			<div class="form-group row mb-3">
				<label for="productName" class="col-form-label col-md-2">상품설명</label>
				<div class="col-md-10">
					<input class="form-control" type="text" name="productDescription" id="productDescription" required="required" autofocus="autofocus"/>
				</div>
			</div>

			<div class="form-group row mb-3">
				<label for="productUnitPrice" class="col-form-label col-md-2">단가(원)</label>
				<div class="col-md-10">
					<input class="form-control" type="text" id="productUnitPrice" name="productUnitPrice" required="required" onkeydown="return fn_showKeyCode(event)"/>
				</div>
			</div>

			<div class="form-group row mb-3">
				<label for="productCount" class="col-form-label col-md-2">수량</label>
				<div class="col-md-10">
					<input class="form-control" type="text" id="productCount" name="productCount" required="required" onkeydown="return fn_showKeyCode(event)"/>
				</div>
			</div>
			<div class="form-group row mb-3">
				<label class="col-form-label col-md-2">상품이미지</label>
				<div class="col-md-10">
					<img id="pic" style="width:auto;max-width:100%;"><br/>
					<input type="hidden" id="productImage" name="productImage" required="required">
				</div>
			</div>
		</div>
	</form>

	<form id="ajaxform" action="${context}/work/product/saveFile.do" method="post" enctype="multipart/form-data" role="form">
		<div class="form-group row mb-3">
		<label class="col-form-label col-md-2"></label>
			<div class="col-md-10">
				<input class="form-control" type="file" id="imageFile" name="imageFile" onchange="fn_upload()" onclick="return fn_checkCategory()"/>
				<input type="hidden" id="imageFolder" name="imageFolder">
			</div>
		</div>
	</form>
	<!-- board button start -->
	<div class="d-flex justify-content-end">
		<button type="button" class="btn boardbtn" onclick="fn_save()">등록하기</button>
		<button type="button" class="btn boardbtn" onclick="fn_back()">취소</button>
	</div>
	<!-- board button end -->
</div>

<jsp:include page="${context}/common/foot.jsp"></jsp:include>
</body>
</html>