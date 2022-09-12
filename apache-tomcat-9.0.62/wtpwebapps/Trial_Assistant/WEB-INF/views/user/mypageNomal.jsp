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
	
    
    .title-box{
        text-align: center;
        justify-content: center;
        margin: 0 auto 100px;
        font-size: 30px !important;
        border:1px solid lightgray;
        border-radius: 40px;
        width: 400px;
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
        margin-left: 10%;
        margin-right: 10%;
        float: left;
        text-align: center;
    }
    .box2{
        color: #676767;
        width: 75%;
        height: 40px;
        line-height: 40px;
        margin-left: 5%;
    }
    .boxbox{
        display: flex;
        margin: 5% auto;
    }






    .announcement-search {
        width: 40%;
        margin-bottom: 10px;
        float: right;
        justify-content: center;
      }

      .announcement-search-input {
        margin-right: 0 !important;
        border-radius: 5px;
        padding: 3px 9px;
        border: 1px solid #d6d6d6;
      }

      #announcement-search-btn {
        border-radius: 5px;
        border: 1px solid black;
        font-size: 15px;
        padding: 7px 9px;
        background: white;
        color: black;
        width: 70px;
      }

      .notice-regi-btn{
          float: right;
          margin: 10px 0;
      }
    
    .input-group-text{
        width: 130px;
        display: flex;
        justify-content : center;
    }

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
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none myInfo" href="../user/mypageNomal.jsp">
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
 <!-- Start 나의 정보 [기관]-->
            
            <section class="col-lg-9">
                    
                <h4 class="title-box">일반조력자 신청 현황 조회</h4>
                  
                <div>
                    <div>
                        <div>
                            <div class="input-group mb-3">
    
                                <span class="input-group-text">이름</span>
                                <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" >
    
                                <span class="input-group-text">아이디</span>
                                <input type="text" class="form-control" aria-label="Text input with segmented dropdown button">
    
                                <span class="input-group-text ">주민등록번호</span>
                                <input type="text" class="form-control" aria-label="Text input with segmented dropdown button">
    
                            </div>   
    
                            <div class="input-group mb-3">
    
                                <span class="input-group-text">집 전화번호</span>
                                <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" >
    
                                <span class="input-group-text">핸드폰 번호</span>
                                <input type="text" class="form-control" aria-label="Text input with segmented dropdown button">
    
                                <span class="input-group-text">E-MAIL</span>
                                <input type="text" class="form-control" aria-label="Text input with segmented dropdown button">
    
                            </div> 
    
                            <div class="input-group mb-3">
    
                                <span class="input-group-text">직업</span>
                                <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" >
    
                                <span class="input-group-text">팩스 번호</span>
                                <input type="text" class="form-control" aria-label="Text input with segmented dropdown button">
    
                            </div> 
    
                            <div class="input-group mb-3">
    
                                <span class="input-group-text">은행</span>
                                <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" >
    
                                <span class="input-group-text">예금주</span>
                                <input type="text" class="form-control" aria-label="Text input with segmented dropdown button">
    
                                <span class="input-group-text">계좌번호</span>
                                <input type="text" class="form-control" aria-label="Text input with segmented dropdown button">
    
                            </div> 
    
                            <div class="input-group mb-3">
    
                                <span class="input-group-text">조력자 구분</span>
                                <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" >
    
                                <span class="input-group-text">조력자 세부 구분</span>
                                <input type="text" class="form-control" aria-label="Text input with segmented dropdown button">
    
                                <span class="input-group-text">조력자 연도</span>
                                <input type="text" class="form-control" aria-label="Text input with segmented dropdown button">
    
                            </div> 
    
                            <div class="input-group mb-3">
    
                                <span class="input-group-text">사업자 번호</span>
                                <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" >
    
                                <span class="input-group-text">소속 기관 번호</span>
                                <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" >
    
                                <span class="input-group-text">사무소 명</span>
                                <!-- 사무소 명이 뭐야 -->
                                <input type="text" class="form-control" aria-label="Text input with segmented dropdown button">
    
                            </div> 
    
                            <div class="input-group mb-3">
    
                                <span class="input-group-text">학력</span>
                                <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" >
    
                                <span class="input-group-text">학력 파일</span>
                                <input type="text" class="form-control" aria-label="Text input with segmented dropdown button">
    
                            </div> 
    
                            <div class="input-group mb-3">
    
                                <span class="input-group-text">경력</span>
                                <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" >
                                <!-- 경력을 어떻게 한줄에 다 적지? -->
    
                                <span class="input-group-text">경력 파일</span>
                                <input type="text" class="form-control" aria-label="Text input with segmented dropdown button">
    
                            </div> 
    
                            <div class="input-group mb-3">
    
                                <span class="input-group-text">기본주소</span>
                                <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" >
    
                                <span class="input-group-text">상세주소</span>
                                <input type="text" class="form-control" aria-label="Text input with segmented dropdown button">
    
                                <span class="input-group-text">우편번호</span>
                                <input type="text" class="form-control" aria-label="Text input with segmented dropdown button">
    
                            </div> 

                            <div class="input-group mb-3">

                                <span class="input-group-text">조력자 선정 결과</span>
                                <input type="text" class="form-control" aria-label="Text input with segmented dropdown button">

                            </div>
    
                        </div>
                        
                    </div>
    
                    <!-- faq를 작성한 사용자만(아이디로 비교) 수정버튼 활성화 -->
                    <div class="notice-regi-btn">
                        <input type="file" class = "file-btn"aria-label="Upload">
    
                        <button class="btn btn-outline-secondary" type="file" id="inputGroupFileAddon04">파일 출력</button>
    
                        <button class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon04">삭제</button>
                    </div>
    
                </div>


            </section>      
            <!-- content종료   -->

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
			});
	
	$('#mypageNomal').click(function(){
		location.href="<c:url value='/user/mypageNomal'/>";
		console.log('일반 조력자 현황 조회로 이동~');
			})
			
	$('#mypageTs').click(function(){
		location.href="<c:url value='/user/mypageNomal'/>";
		console.log('통번역인 현황 조회로 이동~');
			})
		

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