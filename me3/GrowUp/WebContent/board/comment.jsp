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
		<!-- 댓글 관련 자바스크립트 -->
<script>
    let pno='${dsQnA.QNA_NO}';

    $('#commentInsertBtn').click(function(){
        let insertData = $('#commentInsertForm').serialize();
        alert(insertData);
        commentInsert(insertData);
    }); // click() end

    // 댓글 등록
    function commentInsert(insertData){
        $.ajax({
             url:'/reply/insert'
            ,type:'post'
            ,data:insertData
            ,success:function(data){
                if(data==1){
                    commentList(); // 댓글 작성 후 댓글 목록 함수 호출
                    $('#content').val('');
                } // if end
            } // success end
        }); // ajax() end
    }; // commentInsert() end
</script>
</head>
<body>
<div class="container">
    <label for="content">댓글</label>
    <form name="commentInsertForm" id="commentInsertForm">
    <div>
        <input type="hidden" name="pno" id="pno" value="${dsQnA.QNA_NO}">
        <input type="text" name="content" id="content" placeholder="내용을 입력하세요">
        <button type="button" name="commentInsertBtn" id="commentInsertBtn">등록</button>
    </div>
    </form>
</div>
</body>
</html>