<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<title> 마이페이지 개인 정보 수정 페이지 </title>
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
    .btn-box::after{
        display: block;
        content: '';
        clear: both;
    }
    
    button:hover{
        cursor: pointer;
    }

    .btn-box{
        max-width: 800px;
        min-width: 400px;
        margin: 50px 32% 0;

        
    }
    .withdrawal-btn{
        float:left;
        margin-right: 3%;
        box-sizing: border-box;
        text-align: center;
    }
    
    .modif-fin-btn{
        float:left;
        margin-right: 3%;
        box-sizing: border-box;
        text-align: center;
    }

    .cencel-btn{
        float:left;
        box-sizing: border-box;
        text-align: center;
    }

    /*btn-outline-secondary 적용시 왼쪽 짤림 보완 스타일 */
    .btn-add-style{
    border-left: 2px solid gray;
    background-color: white;
    
    }


    
    .total-box{
        border: 1px solid rgb(189, 186, 186);
        border-radius: 20px;
        /* width: 80%; */
        max-width: 800px;
        min-width: 500px;
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
        width: 75%;
        height: 40px;
        line-height: 40px;
        margin: 0 5%;
        border: none;
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
            
                <form class="m-auto form-total-box" id="infoModifForm" method="post" action="<c:url value='/user/MypageInsModif'/>" role="form">

                    <div class="title-box">MY INFO</div>

                    <div class="total-box">
                        
						<div class="boxbox">
                            <div class="box1">아이디</div>
                            <input class="box2 joinName" id="joinName" name="JOINID" value="${userInfo.JOINID}" readonly></input>
                        </div>
						
                        <div class="boxbox">
                            <div class="box1">이름</div>
                            <input class="box2 joinName" id="joinName" name="JOINNAME" value="${userInfo.JOINNAME}" readonly></input>
                        </div>
                        <div class="boxbox">
                            <div class="box1">생년월일</div>
                            <input class="box2 joinBirth" id="joinSocNum" name="JOINSOCNUM" value="${userInfo.JOINSOCNUM}" readonly></input>
                        </div>
                        <div class="boxbox">
                            <div class="box1">성별</div>
                            <input class="box2 joinGen" id="joinGen" name="JOINGEN" value="${userInfo.JOINGEN}" readonly></input>
                        </div>

                        <div class="boxbox">
                            <div class="box1">이메일</div>
                            <input class="box2 joinGen" id="joinEmail" name="JOINEMAIL" value="${userInfo.JOINEMAIL}" readonly></input>
                        </div>


                        <div class="boxbox">
                            <div class="box1">휴대전화</div>
                            <input class="box2" id="joinPhone" name="JOINPHONE" value="${userInfo.JOINPHONE}" readonly></input>
                        </div>

                        <div class="boxbox">
                            <label class="box1" for="inputJoinAddrNum">우편번호</label>
                            <div class="box2 input-group inputJoinAddrNum">
                                <input type="text" class="form-control" id="joinAddrNum" name="JOINADDRNUM" value="${userInfo.JOINADDRNUM}">
                                <button type="button" onclick="searchAddress1()" class="input-group-text btn-add-style btn-outline-secondary ">주소 찾기</button>
                            </div>
                        </div>
                        <div class="boxbox">
                            <label class="box1" for="inputJoinAddrBasic">기본주소</label>
                            <div class="box2 input-group joinAddrBasic">
                                <input type="text" class="form-control" id="joinAddrBasic" name="JOINADDRBASIC" value="${userInfo.JOINADDRBASIC}">
                            </div>
                        </div>
                        <div class="boxbox">
                            <label class="box1" for="inputJoinAddrDetail">상세주소</label>
                            <div class="box2 input-group joinAddrDetail">
                                <input type="text" class="form-control" id="joinAddrDetail" name="JOINADDRDETAIL" value="${userInfo.JOINADDRDETAIL}">
                            </div>
                        </div>
                        <div class="boxbox">
                            <label class="box1" for="inputJoinAddrBasic">기관명</label>
                            <div class="box2 input-group joinAddrBasic">
                                <input type="text" class="form-control" id="insName" name="INSNAME" value="${userInfo.INSNAME}">
                            </div>
                        </div>
                        <div class="boxbox">
                            <label class="box1" for="inputJoinAddrBasic">사업자 번호</label>
                            <div class="box2 input-group joinAddrBasic">
                                <input type="text" class="form-control" id="insSocNum" name="INSSOCNUM" value="${userInfo.INSSOCNUM}">
                            </div>
                        </div>
                        
                        <div class="boxbox">
                            <label class="box1" for="inputJoinAddrNum">우편번호</label>
                            <div class="box2 input-group inputJoinAddrNum">
                                <input type="text" class="form-control" id="insAddrNum" name="INSADDRNUM" value="${userInfo.INSADDRNUM}">
                                <button type="button" onclick="searchAddress2()" class="input-group-text btn-add-style btn-outline-secondary">주소 찾기</button>
                            </div>
                        </div>
                        <div class="boxbox">
                            <label class="box1" for="inputJoinAddrBasic">기본주소</label>
                            <div class="box2 input-group joinAddrBasic">
                                <input type="text" class="form-control" id="insAddrBasic" name="INSADDRBASIC" value="${userInfo.INSADDRBASIC}">
                            </div>
                        </div>
                        <div class="boxbox">
                            <label class="box1" for="inputJoinAddrDetail">상세주소</label>
                            <div class="box2 input-group joinAddrDetail">
                                <input type="text" class="form-control" id="insAddrDetail" name="INSADDRDETAIL" value="${userInfo.INSADDRDETAIL}">
                            </div>
                        </div>

                    </div>

                
                    <div class="btn-box">
                        <div class="withdrawal-btn">
                            <button type="button" id="withdrawalBtn" class="btn btn-outline-secondary px-3">회원탈퇴</button>
                        </div>
                        <div class="modif-fin-btn">
                            <button type="button" id="finishBtn" class="btn btn-outline-secondary px-3">수정완료</button>
                        </div>
                        <div class="cencel-btn">
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


<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>

$(function() {
	$('#withdrawalBtn').click(function() {
	
		location.href="<c:url value='/user/withdrawal'/>";
	})
	$('#mypageNomal').click(function(){
		location.href="<c:url value='/user/mypageNomal'/>";
		console.log('일반 조력자 현황 조회로 이동~');
			})
	$('#mypageTs').click(function(){
		location.href="<c:url value='/user/mypageNomal'/>";
		console.log('통번역인 현황 조회로 이동~');
			})
			
	$('#cencelBtn').click(function(){
		location.href="<c:url value='/user/mypagePerson'/>";
	})
});



$(function() {
	$('#finishBtn').click(function() {
		if($('#joinAddrNum').val() === '') {
			alert('주소를 입력해주세요.');
			return;
		} else if($('#joinAddrDetail').val() === '') {
			alert('주소를 입력해주세요.');
			return;
		} else {
			$('#infoModifForm').submit();
		}
	});
});




//다음 주소 api 사용해 보기
function searchAddress1() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }	                

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('joinAddrNum').value = data.zonecode;
            document.getElementById('joinAddrBasic').value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById('joinAddrDetail').focus();
        }
    }).open();
}

function searchAddress2() {
    new daum.Postcode({
        oncomplete: function(data2) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data2.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data2.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data2.jibunAddress;
            }	                

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('insAddrNum').value = data2.zonecode;
            document.getElementById('insAddrBasic').value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById('insAddrDetail').focus();
        }
    }).open();
}




</script>

