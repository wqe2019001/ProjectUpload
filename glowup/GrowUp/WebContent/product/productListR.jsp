<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>PRODUCT - ${dsProductList[0].PRODUCT_CATEGORY_CD_NM}</title>
	<script src="${context}/js/jquery-1.9.1.js"></script>
</head>
<body>
<jsp:include page="${context}/common/top.jsp"></jsp:include>
<!-- title, visual start -->
<div class="titarea" style='background-image: url("${context}/img/subbg_product.jpg");'></div>
<!-- title, visual end -->
<!-- 상품 영역 -->		
<div class="container product_list footertop">
	<div class="row">
		<div class="col-sm-12 col-md-6 col-lg-4 item_first">
			<div class="row ">
				<div class="align-self-center">
					<p>PRODUCT</p>
					<h2>glow up</h2>
					<p>${dsProductList[0].PRODUCT_CATEGORY_CD_NM} 둘러보기</p>
				</div>
			</div>
		</div>
		<c:forEach items="${dsProductList}" var="dsProductList" varStatus="dsProductIdx">
			<div class="col-sm-12 col-md-6 col-lg-4 productitem">
				<a href="${context}/work/product/retrieveProduct.do?productCode=${dsProductList.PRODUCT_CODE}">
					<img name="image" src="${context}" class="img-fluid">
				</a>
				<h4 class="item_name">${dsProductList.PRODUCT_NAME}</h4>
				<h6 class="eng">${dsProductList.PRODUCT_NAME_ENG}</h6>
				<h6 class="desc">${dsProductList.PRODUCT_DESCRIPTION}</h6>
				<h6>
					<c:choose>
						<c:when test="${dsProductList.PRODUCT_COUNT != 0}"><span class="won"></span></c:when>
						<c:otherwise><span class="text-danger">품절</span></c:otherwise>
					</c:choose>
				</h6>
			</div>
			<c:if test="${dsProductIdx.index % 3 == 1}"></c:if>
			<script type="text/javascript">
				var existFolder = '';
				var imageFolder = '';
				var imageOver = '';
				var path = '';
			 	var productCategoryCd = '${dsProductList.PRODUCT_CATEGORY_CD}';
			
				if(productCategoryCd == 'E'){
					imageFolder = "/eyeImg/${dsProductList.PRODUCT_IMAGE}";
				} else if(productCategoryCd == 'F'){
					imageFolder = "/faceImg/${dsProductList.PRODUCT_IMAGE}";
				} else if(productCategoryCd == 'L'){
					imageFolder = "/lipImg/${dsProductList.PRODUCT_IMAGE}";
				}
				path = $("img[name='image']").eq('${dsProductIdx.index}').attr("src");
			
				existFolder = path.split("/")[0];
				$("img[name='image']").eq('${dsProductIdx.index}').attr("src", path.replace(existFolder, imageFolder));
					
				$("img[name='image']").eq('${dsProductIdx.index}').on('mouseover', function(){
					if(productCategoryCd == 'E'){
						imageOver = "/eyeImg/${dsProductList.PRODUCT_IMAGE2}";
					} else if(productCategoryCd == 'F'){
						imageOver = "/faceImg/${dsProductList.PRODUCT_IMAGE2}";
					} else if(productCategoryCd == 'L'){
						imageOver = "/lipImg/${dsProductList.PRODUCT_IMAGE2}";
					}
					$("img[name='image']").eq('${dsProductIdx.index}').attr("src", path.replace(existFolder, imageOver));
					//console.log("imageOver",imageOver);
				});
				$("img[name='image']").eq('${dsProductIdx.index}').on('mouseout', function(){
					if(productCategoryCd == 'E'){
						imageFolder = "/eyeImg/${dsProductList.PRODUCT_IMAGE}";
					} else if(productCategoryCd == 'F'){
						imageFolder = "/faceImg/${dsProductList.PRODUCT_IMAGE}";
					} else if(productCategoryCd == 'L'){
						imageFolder = "/lipImg/${dsProductList.PRODUCT_IMAGE}";
					}
					$("img[name='image']").eq('${dsProductIdx.index}').attr("src", path.replace(existFolder, imageFolder));
					//console.log("imageFolder",imageFolder);
				});
				
				//가격에 ₩ 및 , 추가
				var won = '${dsProductList.PRODUCT_UNIT_PRICE}'.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
				console.log(won)
				$(".won").text("₩ "+ won);
			</script>
		</c:forEach>
	</div>
</div>

<jsp:include page="${context}/common/foot.jsp"></jsp:include>
</body>
</html>