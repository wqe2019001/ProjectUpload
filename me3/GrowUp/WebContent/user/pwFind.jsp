<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FIND PASSWORD</title>
    <script src="${context}/js/jquery-1.9.1.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$("#email").keydown(function (key){
			if(key.keyCode == 13){
				retrieveUserPw();
			}

		});
	});

	function retrieveUserPw(){
		var id = $("#id").val();
		var email = $("#email").val();

		var param = {};

		param["id"] = id;
		param["email"] = email;

		var access = $("#message");

		$.ajax({
			url:"${context}/work/user/retrieveUserPw.do",
			contentType:"application/json",
			dataType:"json",
			data:param,
			success:function(result){
				access.html(result["checkMsg"]);
			}
		});
	}
	</script>
</head>
<body>
<jsp:include page="${context}/common/top.jsp"></jsp:include>
<!-- title, visual start -->
<div class="backgroundImg" style='background-image: url("${context}/img/subbg_login.jpg");'>
<!-- title, visual end -->
	<div class="row">
    	<div class="col-md-6 col-md-offset-3" style="width: 100%">
	        <div class="loginbox shadow-sm">
	        	<!-- login tab button start -->
	        	<div class="logintab row">
			        <div class="col-6 tabbtn"><a href="${context}/user/idFind.jsp">아이디 찾기</a></div>
			        <div class="col-6 tabbtn on"><a href="${context}/user/pwFind.jsp">비밀번호 찾기</a></div>
				</div>
	        	<!-- login tab button end -->
                <form>
                    <fieldset>
                        <div class="form-group">
                        	<div class="col-sm-12">
                            	<input class="form-control" type="text" name="id" id="id" required="required" autofocus="autofocus" autocomplete="off" placeholder="아이디를 입력하세요. "/>
                            </div>
                        	<div class="col-sm-12">
                        		<input class="form-control" type="email" name="email" id="email" required="required" autocomplete="off" placeholder="이메일을 입력하세요."/>
                            </div>
						</div>
		            	<div class="form-group">
							<div class="col-sm-12">
								<input class="Loginbtn form-control" type="button" name="btnSubmit" id="btnSubmit" value="확 인" onclick="retrieveUserPw()"/>
							</div>
						</div>
						<div class="form-group" id="message"></div>
					</fieldset>
                </form>
			</div>
		</div>
	</div>
</div>
<jsp:include page="${context}/common/foot.jsp"></jsp:include>
</body>
</html>