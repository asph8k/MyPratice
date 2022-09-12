<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<title> 마이페이지 개인 정보조회 페이지 </title>
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

    .form-total-box{
        max-width: 800px;
        min-width: 400px;
    }
    
    
    button:hover{
        cursor: pointer;
    }
    .btn-box{
        margin-top: 50px;
        width: 100%;
        min-width: 400px;
        text-align: center;    
    }
    /* .btn-box::after{
        display: block;
        content: '';
        clear: both;
    } */

    .modif-btn{
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
        min-width: 80%;
        margin: 0 auto;
        padding: 20px 0;
    }
    
    .box1{
        border-radius: 20px;
        background-color: #EFEFEF;
        color: #676767;
        min-width: 25%;
        height: 40px;
        line-height: 40px;
        margin-left: 10%;
        margin-right: 10%;
        float: left;
        text-align: center;
    }
    .box2{
        color: #676767;
        min-width: 75%;
        height: 40px;
        line-height: 40px;
        margin: 0 5%;
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
                        <a id="mypageNomal" class="collapsed d-flex justify-content-between h3 text-decoration-none myInfo" href="<c:url value='/user/mypageNomal'/>">
                            일반 조력자 선정 현황 
                        </a>
                    </li>
                    <li class="pb-3">
                        <a id="mypageTS" class="collapsed d-flex justify-content-between h3 text-decoration-none myInfo" href="#">
                           통번역인 조력자 선정 현황
                        </a>
                    </li>
                    <li class="pb-3">
                        <a id="MyFaq" class="collapsed d-flex justify-content-between h3 text-decoration-none" href="../faq/faq_list.jsp">
                            MY FAQ
                        </a>
                    </li>
                    <li class="pb-3">
                        <!-- <a id="Logout" class="collapsed d-flex justify-content-between h3 text-decoration-none " href="../logout"> -->
                        <a id="Logout" class="collapsed d-flex justify-content-between h3 text-decoration-none " href="#" >
                        
                        로그아웃
                        </a>
                    </li>
                </ul>
            </div>
        <!-- End 사이드 바-->

            <!-- Start 나의 정보 [개인]-->
            <div class="col-lg-9">
            
                <form class="m-auto form-total-box" id="mypageForm" action="<c:url value='/user/mypagePersonModif'/>" role="form">

                    <div class="title-box">MY INFO</div>

                    <div class="total-box">
                    
                    	<div class="boxbox">
                            <div class="box1">아이디</div>
                            <div class="box2 JOINID" name="JOINID" value="">${user.JOINID}</div>
                        </div>
                        
                        <div class="boxbox">
                            <div class="box1">이름</div>
                            <div class="box2 JOINNAME" name="JOINNAME" >${user.JOINNAME}</div>
                        </div>
                        <div class="boxbox">
                            <div class="box1">생년월일</div>
                            <div class="box2 joinBirth" id="birthday" name="JOINSOCNUM">${user.JOINSOCNUM.substring(0,2)}년 ${user.JOINSOCNUM.substring(2,4)}월 ${user.JOINSOCNUM.substring(4,6)}일 </div>
                        </div>
                        <div class="boxbox">
                            <div class="box1">성별</div>
                            <div class="box2 joinGen" name="JOINGEN">${user.JOINGEN}</div>
                        </div>
                        <div class="boxbox">
                            <div class="box1">이메일</div>
                            <div class="box2 joinEmail" name="JOINEMAIL">${user.JOINEMAIL}</div>
                        </div>
                        <div class="boxbox">
                            <div class="box1">휴대전화</div>
                            <div class="box2 joinPhone" name="JOINPHONE" >${user.JOINPHONE}</div>
                        </div>
                        <div class="boxbox">
                            <div class="box1">우편번호</div>
                            <div class="box2 joinAddrBasic" name="JOINADDRNUM">${user.JOINADDRNUM}</div>
                        </div>
                        <div class="boxbox">
                            <div class="box1">주소</div>
                            <div class="box2 joinAddrBasic" name="JOINADDRBASIC">${user.JOINADDRBASIC}</div>
                        </div>
                        <div class="boxbox">
                            <div class="box1">상세주소</div>
                            <div class="box2 joinAddrDetail" name="JOINADDRDETAIL">${user.JOINADDRDETAIL}</div>
                        </div>

                    </div>
                
                    <div class="btn-box">
                        <div class="col mt-2 modif-btn">
                            <button type="button" id="modifyBtn" class="btn btn-outline-secondary px-3">정보수정</button>
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

function logoutChk(){
	return confirm("로그아웃하시겠습니까?");
}

 $(function() {
	 
	$('#MyFaq').click(function(){
		location.href="<c:url value='/faqans/list'/>";
		console.log('faq이동~');
			})
	

	$('#mypageNomal').click(function(){
		location.href="<c:url value='/apply/ghDetail/${sessionScope.id}'/>";
		console.log('일반 조력자 현황 조회로 이동~');
		});
	
	$('#mypageTS').click(function(){
		location.href="<c:url value='/apply/tsDetail/${sessionScope.id}'/>";
		console.log('통번역인 현황 조회로 이동~');
		});	
		

	$('#Logout').click(function(){
		
		if(confirm("로그아웃 하시겠습니까?")){
			location.href="<c:url value='/logout'/>";
		}else {
			history.back()
		}
		
		}); 
	
	 $('#cencelBtn').click(function(){
		 	location.href="<c:url value='/'/>";
		 	})

		 
	$('#modifyBtn').click(function(){
		 $('#mypageForm').submit();
	 	})

	});
	


</script>

</html>