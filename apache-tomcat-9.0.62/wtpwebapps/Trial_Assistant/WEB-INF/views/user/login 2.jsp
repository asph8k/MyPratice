<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <title> 로그인 페이지  </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

 <!-- 페이지 무조건 추가  -->
	<link rel="shortcut icon" type="image/x-icon"
		href="${pageContext.request.contextPath }/resources/images/favicon.ico">
	
	
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/templatemo.css">

	
	<!-- Load fonts style after rendering the layout styles -->
	<link rel="stylesheet"
		href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/fontawesome.min.css">
	<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
		
	<!-- 아이콘 깨지는 것 해결하는 script -->
	<script src="https://kit.fontawesome.com/22ff043012.js" crossorigin="anonymous"></script>
		
	<!-- Start Script -->
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery-1.11.0.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery-migrate-1.2.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/templatemo.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/custom.js"></script>
	<!-- End Script -->
	
	<!-- 무조건 페이지 추가  -->
<style>

/* 푸터 */
    .under-footer {
        height: 150px;
    }

    .footer-box2 {
        padding: 20px 0px;
        position: relative;
        left: 160px;
        bottom: 115px;
        font-size: 17px !important;
        font-weight: 100 !important;
        line-height: 30px;
    }
/* Start joinSelect.css */

/* login.html의 css*/
.title-box{
    text-align: center;
    justify-content: center;
    margin: 0 auto 100px;
    font-size: 30px !important;
    border:1px solid lightgray;
    border-radius: 40px;
    width: 200px;
    background-color: rgb(228, 227, 227);
    color: rgb(132, 127, 127);
    font-weight: 500 !important;
}

.form-box{
    max-width: 400px;

}

label {
    font-weight: 700 !important;
}

button:hover{
    cursor: pointer;
}
.btn-box{
    margin-top: 70px;
    margin-left: 33px;
    width: 100%;
}

.id-btn{
    float: left;
    margin: 0 5px;
    box-sizing: border-box;
}
.pw-btn{
    float: left;
    margin: 0 5px;
    box-sizing: border-box;
}
.login-btn{
    float: left;
    margin: 0 5px;
    box-sizing: border-box;
    
}


</style>
</head>
<body>
	<jsp:include page="../include/headerCommon.jsp" /> 


<!-- Start 로그인 -->
<div class="container py-5">
    <div class="row">
        <form class="form-box m-auto" method="post" role="form" id="loginForm" action="<c:url value='/user/Login'/>"> 

            <div class="title-box">로그인</div>

         
            <div class="mb-3">
                <label for="inputJoinId">아이디</label>
                <input type="text" class="form-control mt-1" id="JOINID" name="JOINID" placeholder="아이디를 입력하세요.">
            </div>
            <div class="mb-3 ">
                <label for="inputJoinPw">비밀번호</label>
                <input type="password" class="form-control mt-1" id="JOINPW" name="JOINPW"  placeholder="비밀번호를 입력하세요.">
            </div>
           
            <div class="btn-box">
                <div class="id-btn">
                    <button type="button" id="idSearch" class="btn btn-outline-secondary">아이디 찾기</button>
                </div>
                <div class="pw-btn">
                    <button type="button" id="pwSearch" class="btn btn-outline-secondary">비밀번호 찾기</button>
                </div>
                <div class="login-btn">
                    <button type="button" id="loginBtn" class="btn btn-outline-secondary">로그인</button>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- End 로그인 -->


<%@ include file="../include/footerCommon.jsp"%>



</body>

 <script>
    	const msg = '${msg}';
    	if(msg === 'joinSuccess') {
    		alert('로그인 정상 처리되었습니다.');
    	} else if(msg === 'loginFail') {
    		alert('로그인 실패! 아이디와 비밀번호를 확인하세요.');
    	}
    	
    	//입력란이 공백인 지를 확인한 후, 공백이 아니라면 submit() 진행.
    	//mapper에 작성한 login 메서드의 리턴 타입은 UserVO
    	//리턴 타입에 맞게 sql문을 작성 해 주시면 되겠습니다.
    	$(function() {
			$('#loginBtn').click(function() {
				if($('#JOINID').val() === '') {
					alert('아이디를 입력해주세요.');
					return;
				} else if($('#JOINPW').val() === '') {
					alert('비밀번호를 작성하세요.');
					return;
				} else {
					$('#loginForm').submit();
				}
			});
		});
    	
    	$(function() {
    		$('#idSearch').click(function(){
    			location.href="<c:url value='/user/idSearch'/>";
    		})
    	})
    	
    	$(function() {
    		$('#pwSearch').click(function(){
    			location.href="<c:url value='/user/pwSearch'/>";
    		})
    	})
    	
    	
    	
    	
    </script>
</html>