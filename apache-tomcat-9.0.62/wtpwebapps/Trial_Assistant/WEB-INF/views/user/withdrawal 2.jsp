<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <title> 마이페이지 회원탈퇴 페이지  </title>
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
    
    
    button:hover{
        cursor: pointer;
    }
    .btn-box{
        margin-top: 50px;
        width: 100%;
        text-align: center;
    }
    
    .withdrawal-btn{
        margin: 0 50px;
        box-sizing: border-box;
        display: inline-block;
    }
    .cencel-btn{
        margin: 0 50px;
        box-sizing: border-box;
        display: inline-block;
    }
    
    .total-box{
        border: 1px solid rgb(189, 186, 186);
        border-radius: 20px;
        width: 80%;
        margin: 0 auto;
        padding: 20px 0;
    }
    
    .box1{
        border-radius: 20px;
        background-color: #EFEFEF;
        color: #676767;
        width: 25%;
        height: 40px;
        line-height: 40px;
        margin-left: 5%;
        margin-right: 5%;
        float: left;
        text-align: center;
    }
    .box2{
        color: #676767;
        width: 60%;
        height: 40px;
        line-height: 40px;
    }
    .boxbox{
        display: flex;
        margin: 5% auto;
    }
    

    </style>
</head>
<body>
	<jsp:include page="../include/headerCommon.jsp" /> 


<!-- Start 사이드 바 -->
    <div class="container py-5">
        <div class="row">

            <div class="col-lg-3">
                <h1 class="h2 pb-4">MY PAGE</h1>
                <ul class="list-unstyled templatemo-accordion">
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                            MY INFO
                        </a>
                    </li>
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none myInfo" href="#">
                            조력자 신청/선정 현황
                        </a>
                    </li>
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                            MY FAQ
                        </a>
                    </li>
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="index.html">
                        로그아웃
                        </a>
                    </li>
                </ul>
            </div>
            <!-- End 사이드 바-->

            <!-- Start 나의 정보 [기관]-->
            <div class="col-lg-9">
            
                <form class="m-auto" method="post" role="form" id="withdrawalForm" action="<c:url value='/user/Withdrawal'/>">

                    <div class="title-box">회원 탈퇴</div>
                    
                    <div class="total-box">
                        <div class="boxbox">
                            <label class="box1" for="inputJoinPw">비밀번호</label>
                            <div class="box2 input-group joinPw">
                                <input type="text" class="form-control" id="joinPw" name="JOINPW" placeholder="비밀번호를 입력하세요.">
                            </div>
                        </div>
                    </div>
                
                    <div class="btn-box">
                        <div class="col mt-2 withdrawal-btn">
                            <button type="button" id="withdrawalBtn" class="btn btn-outline-secondary px-3">회원탈퇴</button>
                        </div>
                        <div class="col mt-2 cencel-btn">
                            <button type="button" id="cencelBtn" class="btn btn-outline-secondary px-3">취소</button>
                        </div>
                    </div>
                </form>
                
                
            </div>

        </div>
    </div>
    <!-- End Content -->



<%@ include file="../include/footerCommon.jsp"%>


</body>
<script>
	$(function() {
		$('#withdrawalBtn').click(function() {
			$('#withdrawalForm').submit();
			});
		});


</script>
</html>