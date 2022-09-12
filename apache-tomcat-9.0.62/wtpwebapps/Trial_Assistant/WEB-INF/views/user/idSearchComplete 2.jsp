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
	
.complete-text{
   text-align: center;
   margin-bottom: 50px;
   color: #676767;
    }

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



label {
    font-weight: 700 !important;
}

button:hover{
    cursor: pointer;
}


/* End join.html의 css*/

    .total-box{
        text-align: center;
        justify-content: center;
        border: 1px solid rgb(189, 186, 186);
        border-radius: 20px;
        width: 400px;
        margin: 0 auto 90px;
       
    }

    .boxbox{
        display: flex;
        margin: 25px 25px;
        
    }
    
    .box1{
        border-radius: 20px;
        background-color: #EFEFEF;
        color: #676767;
        width: 30%;
        height: 40px;
        line-height: 40px;
        margin-left: 30px;
        float: left;
        text-align: center;
    }
    .box2{
        color: #676767;
        height: 40px;
        line-height: 40px;
        margin-left:50px;
    }
    .login-btn-box{
        width: 400px;
        text-align: center;
        margin: 0 auto;
    }
    .login-btn{
        margin: 0 auto;
    }

</style>
</head>
<body>

<jsp:include page="../include/headerCommon.jsp" /> 

<!-- Start 아이디 찾기 -->
<div class="container py-5">
    
    <form class="m-auto" method="post" role="form">

        <div class="title-box">아이디 찾기</div>

        <div class="complete-text"> 회원가입 시 입력하신 아이디가 조회 되었습니다. </div>        
         
        <div class="total-box">
            
            <div class="boxbox">
                <div class="box1">아이디</div>
                <div class="box2 joinId" name="JOINID">${userInfo.JOINID}</div>
                <!--  -->
            </div>
        </div>
        <div class="login-btn-box">
            <button type="button" id="loginBtn" class="btn btn-outline-secondary login-btn">로그인</button>
        </div>
    </form>
    
</div>
<!-- End 아이디 찾기 -->






<%@ include file="../include/footerCommon.jsp"%>

</body>

<script>

$(function() {
	$('#loginBtn').click(function(){
		location.href="<c:url value='/user/login'/>";
	})
});



</script>
</html>