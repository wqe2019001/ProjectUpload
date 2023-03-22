<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>이벤트 | 글 목록</title>
	<script src="${context}/js/jquery-1.9.1.js"></script>
   	<!-- 테이블에 dataTables-example 사용시 검색, 페이징처리 됨 -->
	<link href="https://cdn.datatables.net/1.13.3/css/jquery.dataTables.min.css" rel="stylesheet"/>
	<!-- 테이블에 dataTables-example 사용시 검색, 페이징처리 됨 -->
	<script src="https://cdn.datatables.net/1.13.3/js/jquery.dataTables.min.js"></script>
    
	<script type="text/javascript">
	 $(document).ready(function() {
         $('#dataTables-example').DataTable({
      	   "language" : {
	        		"search" : " ",
	       			"searchPlaceholder": "궁금한게 있으신가요?",
	        	    "paginate": {
	                "first":  "1",
	                "last":   "2",
	                "next":   ">>",
	                "previous":   "<<"
      	    }
             },
         });
         
     });
		function fn_eventWrite(){
			location.href = "${context}/work/board/eventWrite.do";
		}
	</script>
</head>
<body>
<jsp:include page="${context}/common/top.jsp"></jsp:include>

<!-- title, visual start -->
<div class="titarea" style='background-image: url("${context}/img/subbg_event.jpg");'></div>
<!-- title, visual end -->

<!-- Details -->
<div class="container footertop">
	<div class="px-5 py-5">
		<!-- board title start -->
		<div class="py-5">
			<p class="title fs-1 fw-bold">이벤트</p>
		</div>
		<!-- board title end -->
		
		<!-- board list start -->
		<div class="table-responsive-sm">
        	<table class="table table-hover eventlist" id="dataTables-example">
              <thead class="mt-5">
                <tr style="visibility: hidden;">
                  <th>제목</th>
                  <th>작성자</th>
                  <th>작성일</th>
                  <th>조회수</th>
                </tr>
              </thead>
              <tbody>
               <c:forEach items="${dsEventList}" var="dsEventList">
                <tr>
                 <td class="col-sm-6 p-3 text-start"><a href ="${context}/work/board/eventView.do?evNo=${dsEventList.EV_NO}">${dsEventList.EV_TITLE}</a></td>
                 <td class="col-sm-2 p-3 text-start fw-bold">${dsEventList.USER_NAME}</td>
                 <td class="col-sm-2 p-3 text-center">${dsEventList.EV_REG_DATE}</td>
                 <td class="col-sm-2 p-3 text-end">조회수 : ${dsEventList.EV_HIT}</td>
                </tr>
               </c:forEach>
              </tbody>
             </table>
          </div>
		<!-- board list end -->
		
		<!-- board buttons start -->
		<c:if test="${sessionScope.grade == 'A' || sessionScope.grade == 'M'}">
			<div class="d-flex flex-row-reverse p-2">
				<button type="button" class="btn boardbtn p-2" onclick="fn_eventWrite()">새 글 쓰기</button>
			</div>
		</c:if>
		<!-- board buttons end -->
		
	</div> <!-- Details end -->
</div> <!-- container end -->

<jsp:include page="${context}/common/foot.jsp"></jsp:include>
</body>
</html>