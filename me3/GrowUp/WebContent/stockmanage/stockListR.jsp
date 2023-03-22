<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ADMIN - 재고관리</title>
	<!-- 테이블에 dataTables-example 사용시 검색, 페이징처리 됨 -->
	<link href="https://cdn.datatables.net/1.13.3/css/jquery.dataTables.min.css" rel="stylesheet"/>
	
	<script src="${context}/js/jquery-1.9.1.js"></script>
	<!-- 테이블에 dataTables-example 사용시 검색, 페이징처리 됨 -->
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script src="https://cdn.datatables.net/1.13.3/js/jquery.dataTables.min.js"></script>
	
    <script>
	    $(document).ready(function() {
	        $('#dataTables-example').DataTable();
	    });
	
	    function fn_modifyProduct(paramProductCode){
			location.href = "${context}/work/product/updateProduct.do?productCode=" + paramProductCode;
	    }
	
	    function fn_createProduct(){
			location.href = "${context}/work/product/createProduct.do";
	    }
    </script>
</head>
<body>
<jsp:include page="${context}/common/top.jsp"></jsp:include>
<div class="container">
	<!-- board title start -->
	<div class="py-5">
		<p class="title fs-1 fw-bold">재고관리</p>
	</div>
	<!-- board title end -->
    <div class="table-responsive">
        <table class="table hover pt-2" id="dataTables-example">
            <thead>
                <tr>
                	<th style="width:150px;">상품번호</th>
                    <th style="width:150px;">상품이미지</th>
                   	<th style="min-width:300px">상품명</th>
                    <th style="width:150px;">판매가</th>
                    <th style="width:100px;">재고</th>
                    <th style="width:100px;">수정</th>
                </tr>
            </thead>
            <tbody>
            	<c:forEach items="${dsProductList}" var="dsProductList" varStatus="productIdx">
                 <tr>
                 	<td style="text-align: center; vertical-align: middle;">${dsProductList.PRODUCT_CODE}</td>
                    <td style="width:150px;text-align: center;">
						<img name="image" width="135px" height="120px" src="${context}" class="img-thumbnail">
						<script type="text/javascript">
							var existFolder = '';
							var imageFolder = '';
							var path = '';
						 	var productCategoryCd = '${dsProductList.PRODUCT_CATEGORY_CD}';
						
						 	if(productCategoryCd == 'E'){
								imageFolder = "/eyeImg/${dsProductList.PRODUCT_IMAGE}";
							} else if(productCategoryCd == 'F'){
								imageFolder = "/faceImg/${dsProductList.PRODUCT_IMAGE}";
							} else if(productCategoryCd == 'L'){
								imageFolder = "/lipImg/${dsProductList.PRODUCT_IMAGE}";
							}
							path = $("img[name='image']").eq('${productIdx.index}').attr("src");
						
							existFolder = path.split("/")[0];
							$("img[name='image']").eq('${productIdx.index}').attr("src", path.replace(existFolder, imageFolder));
						</script>
                    </td>
                    <td style="vertical-align: middle;">
                    	[${dsProductList.PRODUCT_CATEGORY_CD_NM}]
                    	<br>한글명 : ${dsProductList.PRODUCT_NAME}
                    	<br>영문명 : ${dsProductList.PRODUCT_NAME_ENG}
                    	<br>설명 : ${dsProductList.PRODUCT_DESCRIPTION}
                    </td>
                    <td style="text-align: center; vertical-align: middle;">₩ <fmt:formatNumber value="${dsProductList.PRODUCT_UNIT_PRICE}" pattern="#,###" /></td>
                    <td style="text-align: center; vertical-align: middle;">${dsProductList.PRODUCT_COUNT}</td>
                    <td style="text-align: center; vertical-align: middle;">
                    	<button type="button" class="btn" onclick="fn_modifyProduct('${dsProductList.PRODUCT_CODE}')">수정</button>
                    </td>
                 </tr>
                </c:forEach>
            </tbody>
        </table>
	</div>
	<!-- board buttons start -->
	<div class="d-flex flex-row-reverse p-2">
		<button type="button" class="btn boardbtn p-2" onclick="fn_createProduct()">상품등록</button>
	</div>
	<!-- board buttons end -->
</div>
<jsp:include page="${context}/common/foot.jsp"></jsp:include>
</body>
</html>