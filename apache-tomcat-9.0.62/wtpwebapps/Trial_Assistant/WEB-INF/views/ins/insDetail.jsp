<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html>
<html>
<head>

	<title>기관 상세 정보</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="apple-touch-icon" href="${pageContext.request.contextPath }/resources/images/apple-icon.png" />
    
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
	<script src="https://kit.fontawesome.com/22ff043012.js"
		crossorigin="anonymous"></script>
	
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
.notice-regi-title{
    margin-left: 40%;
}

section{
    height: 80% !important;
}

.notice-regi-text{
    height: 70%;
}

.notice-regi-btn{
    margin-top: 10px;
    float: right;
    
}

form{
    padding-bottom: 20px;
}

.notice-modi-btn{
    margin-right: 20px;
}

.input-group-text{
    width: 130px;
    display: flex;
    justify-content : center;
}

.file-btn{
    font-size: 15px !important;
    font-weight: 500;
}

.sec-list{
        padding: 10% !important;
      }

/* 여기서부터 추가 */
.form-total{
    padding-top: 100px;
}

.side-sec{
    float: left;
    width: 10%;
    margin-left: 0;
}

.total-sec{
    width: 70%;
    float: right;
    margin-right: 100px;
}

.notice-regi-btn{
    margin-top: 10px;
    float: right;
    padding-bottom: 100px;
}

/*
    왼쪽 사이드 카테고리
*/

.col-lg-3 {
    margin-top: 150px;
    margin-left: 100px;
    width: 360px;
}

.pb-3 a {
    font-weight: bold;
    padding-bottom: 15px;
}

.pb-3 a:hover {
    color: #5a95f5;
}

/*-----------------------------------------------------------------*/

/*
    사이드 버튼 이벤트 효과
*/

.action-btn {
    padding: 15px 100px;
    margin:10px 4px;
    font-family: sans-serif;
    text-transform: uppercase;
    text-align: center;
    position: relative;
    text-decoration: none;
    display:inline-block;
    
}

.action-btn::before{
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    display: block;
    width: 100%;
    height: 100%;
    z-index: -1;
    transform: scaleX(.3);
    opacity: 0;
    transition: all .3s
}
  .action-btn:hover::before{
    opacity: 1;
    background-color: #212934;
    -webkit-transform: scaleX(1);
    transform: scaleX(1);
    transition: -webkit-transform .6s cubic-bezier(.08, .35, .13, 1.02), opacity .4s;
    transition: transform .6s cubic-bezier(.08, .35, .13, 1.02), opacity;   
}

.pb-3 a:hover {
    color: white;
}

/*-----------------------------------------------------------------*/


/* title style */
.announcement-detail-title{
    width: 100%;
    margin-bottom: 80px;
}
.announcement-detail-title h3{
    text-align: center;
    margin: 0 auto;
    border-top:2px solid #888888 ;
    border-bottom:2px solid #888888 ;
    padding: 15px;
    color: #808080;
    width: 25%;
    font-size: 20px;
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


    #map{
    position: relative;
    left: 510px;
    bottom: 80px;
    width: 66%;
    height: 500px;
}

</style>
<!-- 구글 지도 api 키 복사본 -->
<!-- <script src="http://maps.google.com/maps/api/js?key=AIzaSyAC-AIzaSyCwh5AjRA7Cb4OK1yAf4NPKFOCXJkSRnVQ=kr"></script> -->
<!-- 구글 지도 api 키 -->
<!-- <script src="http://maps.google.com/maps/api/js?key=AIzaSyCkUWiTr00iD8MjKReRIghxMQqR0BKXBPQ=kr"></script> -->
<!-- 구글 지도 api 키 -->
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCwh5AjRA7Cb4OK1yAf4NPKFOCXJkSRnVQ&callback=initMap"></script>

</head>
<body>

	<jsp:include page="../include/header2.jsp" />
	
	    <!-- side바 추가 -->
    <div class="total clearfix">
        <!-- form을 감싸고 있음-->
    <div class="container side-sec">
        <div class="row">

            <div class="col-lg-3">
                <ul class="list-unstyled templatemo-accordion">
                  <li class="pb-3">
                      <a class="collapsed d-flex justify-content-between h3 text-decoration-none" onclick="location.href='<c:url value = "/ins/insList"/>'">
                      	기관 정보 조회
                      </a>
                  </li>
                  <li class="pb-3">
                      <a class="collapsed d-flex justify-content-between h3 text-decoration-none myInfo" onclick="location.href='<c:url value = "/ins/insAdd"/>'">
                      	기관 정보 등록
                      </a>
                  </li>
              </ul>
            </div>
        </div>
    </div>

    <!-- Start Categories of The Month -->
        <section class = "py-3 total-sec">

        <div class="table-box col-lg second-section" >
            <!-- 타이틀 추가 -->
            <div class="announcement-detail-title">
                <h3>기관 상세 정보</h3>
            </div>


            <div>
                <div>
                    <div>
                    	<form name="DetailForm" method="post">
	                        <div class="input-group mb-3">
	                        
	                            <span class="input-group-text">기관 이름</span>
	                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" value="${insdetail.insName}" readonly>
	                            <span class="input-group-text">기관 연락처</span>
	                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" value="${insdetail.insPhone}" readonly>
	                            <span class="input-group-text">기관 팩스번호</span>
	                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" value="${insdetail.insFaxNum}" readonly>
	
	                        </div>
	
	                        <div class="input-group mb-3">
	
	                            <span class="input-group-text">기관 주소</span>
	                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" value="${insdetail.insAddr}" readonly>
	
	                        </div>
	                        
	                        <div class="input-group mb-3">
	
	                            <span class="input-group-text">기관 상세 주소</span>
	                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" value="${insdetail.insAddrDetail}" readonly>
	
	                        </div>
	
	                        <div class="input-group mb-3">
	
	                            <span class="input-group-text">기관 등록일</span>
	                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" value="${insdetail.insRgstr}" readonly>
	                            <span class="input-group-text">기관 해제일</span>
	                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" value="${insdetail.insRls}" readonly>
	
	                        </div>
	                      </form>
                    </div>
                    
                </div>

                <!-- faq를 작성한 사용자만(아이디로 비교) 수정버튼 활성화 -->
                <div class="notice-regi-btn">
                    <button class="btn btn-outline-secondary" type="button" id="delBtn">삭제</button>

                    <button class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon04" onclick="location.href='<c:url value="/ins/insUpdate/${insdetail.insNum}"/>'">수정</button>
                </div>

          </div>

        </div>
       
    </section>

		<div id="map"></div>
</div>
	
	<%@ include file="../include/footer1.jsp"%>
	
	<script>
	
	$(function() {
		//$('#updateBtn').click(function(){			
		//	location.href='<c:url value="/ins/insUpdate?page=${param.page}" />';
		//});
		
		$('#delBtn').click(function() {
			if(confirm("삭제하시겠습니까?")) {
				$('form[name=DetailForm]').attr('action', '<c:url value="/ins/insDelete/${insdetail.insNum}"/>');
				$('form[name=DetailForm]').submit();
			}		
		});
	});
	
	var map;
    // 지도 출력
    function initMap(){
        // 위치데이터 경도, 위도로 구성된 jso 파일은 항상 이런식으로 구성되어있다.
        //var ll = {lat: 37.500624, lng: 127.036268};
        var ll = {lat: 37.492196096285, lng: 127.00989115639}; //대법원과 가까운 서초역 위도 경도
        map = new google.maps.Map(
                document.getElementById("map"),
                {zoom: 17, center: ll}
                );
        new google.maps.Marker(
            {position: ll,
                map: map,
                label: "현재 위치"}        
        );
    }
    initMap(); // 맵 생성
    
    // 지도의 중심을 변경하는 작업
    function changeMap1(){
        var ll = {lat:35.661625, lng: 125.239803};
        map.panTo(ll);
        map.setZoom(16);
    } 
    // 새로운 지도를 여는 작업 -> 마커 지워짐
    function changeMap2(){
        var ll = {lat:-40.339098, lng: 175.609729};
        map = new google.maps.Map(
                document.getElementById("map"),
                {zoom:17, center: ll}
                );
    }
    // 거리뷰를 새창으로 보여주는 작업
    function changeMap3(){
        window.open('pano.html','',width=300,height=300);
    }
	
	</script>

</body>
</html>