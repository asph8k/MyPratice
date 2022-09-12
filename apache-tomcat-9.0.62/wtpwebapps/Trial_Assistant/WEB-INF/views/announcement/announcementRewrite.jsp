<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 페이지 무조건 추가  -->
	<link rel="shortcut icon" type="image/x-icon"
		href="${pageContext.request.contextPath }/resources/images/favicon.ico">
	
	
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/templatemo.css">
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/custom.css">
	
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
        .notice-regi-title {
            margin-left: 40%;
        }

        section {
            height: 80% !important;
        }

        .notice-regi-text {
            height: 70%;
        }

        form {
            padding-bottom: 20px;
        }

        .notice-modi-btn {
            margin-right: 20px;
        }

        .input-group-text {
            width: 130px;
            display: flex;
            justify-content: center;
        }

        .file-btn {
            font-size: 15px !important;
            font-weight: 500;
        }

        .sec-list {
            padding: 10% !important;
        }


        /* 여기서부터 추가 */
        .form-total {
            padding-top: 100px;
        }

        .side-sec {
            float: left;
            width: 10%;
            margin-left: 0;
        }

        .total-sec {
            width: 70%;
            float: right;
            margin-right: 100px;
        }

        .notice-regi-btn {
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
            margin: 10px 4px;
            font-family: sans-serif;
            text-transform: uppercase;
            text-align: center;
            position: relative;
            text-decoration: none;
            display: inline-block;

        }

        .action-btn::before {
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

        .action-btn:hover::before {
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
        .announcement-detail-title {
            width: 100%;
            margin-bottom: 80px;
        }

        .announcement-detail-title h3 {
            text-align: center;
            margin: 0 auto;
            border-top: 2px solid #888888;
            border-bottom: 2px solid #888888;
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
    </style>
</head>
<body>

	<%@include file="../include/headerCommon.jsp" %>
	<!-- Modal -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog"
        aria-labelledby="exampleModalLabel" aria-hidden="true">

    </div>




   <!-- side바 추가 -->
    <div class="total clearfix">
        <!-- form을 감싸고 있음-->
        <div class="container side-sec">
            <div class="row">

                <div class="col-lg-3">
                    <h1 class="h2 pb-4">MY PAGE</h1>



                    <ul class="list-unstyled templatemo-accordion">
                        <li class="pb-3">
                            <a class="collapsed d-flex justify-content-between h3 text-decoration-none"
                                href="mypage_ins.html">
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
                            <a class="collapsed d-flex justify-content-between h3 text-decoration-none"
                                href="index.html">
                                로그아웃
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>



        <form class="form-total" action="<c:url value='/announcement/announcementRewrite'/>" name="rewriteForm" method="post">
            <section class="py-3 total-sec">

                <div class="table-box col-lg second-section">

                    <!-- 타이틀 추가 -->
                    <div class="announcement-detail-title">
                        <h3>공고 수정</h3>
                    </div>

                    <div>
                        <div>
                            <div>
                                <div class="input-group mb-3">

                                    <span class="input-group-text">제목</span>
                                    <input type="text" class="form-control"
                                        aria-label="Text input with segmented dropdown button" name="AnmTitle" value="${anmUpdate.anmTitle}">

                                </div>

                                <div class="input-group mb-3">

                                    <span class="input-group-text">작성자</span>
                                    <input type="text" class="form-control" style="background-color: #fff !important;"
                                        aria-label="Text input with segmented dropdown button" name="ManagerId" value="${anmUpdate.managerId}" readonly>

                                </div>

                                <div class="input-group mb-3">

                                    <span class="input-group-text">년도</span>
                                    <input type="text" class="form-control"
                                        aria-label="Text input with segmented dropdown button" name="AnmYear" value="${anmUpdate.anmYear}">

                                    <span class="input-group-text">공고 차수</span>
                                    <input type="text" class="form-control"
                                        aria-label="Text input with segmented dropdown button" name="AnmDegree" value="${anmUpdate.anmDegree}">

                                    <span class="input-group-text">조력자 구분</span>
                                    <input type="text" class="form-control"
                                        aria-label="Text input with segmented dropdown button" name="AnmDivision" value="${anmUpdate.anmDivision}">

                                </div>

                                <div class="input-group mb-3">

                                    <span class="input-group-text">공고상태</span>
                                    <div style="border: 1px solid #e6e6e6; display: flex; align-items: center;">
                                        <input type="radio" class="anm-rbtn" name="group"
                                            style="margin: 0 16px;">
                                        <h6 style="margin-top: 6px;">공고 중</h6>
                                        <input type="radio" class="anm-rbtn" name="group"
                                            style="margin: 0 16px;">
                                        <h6 style="margin-top: 6px; margin-right: 100px;">공고 마감</h6>

                                    </div>
                                    <span class="input-group-text">공고기간</span>
                                    <div
                                    style="border: 1px solid #e6e6e6; display: flex; align-items: center; font-size: 10px; padding-left: 30px;">
                                    &nbsp;<input type="date"
                                        style="height: 20px; font-size: 15px; border: 1px solid #d6d6d6; border-radius: 3px;" name="AnmStart" value="${anmUpdate.anmStart }">&nbsp;
                                    ~
                                    &nbsp;<input type="date"
                                        style="height: 20px; font-size: 15px; border: 1px solid #d6d6d6; border-radius: 3px;" name="AnmEnd" value="${anmUpdate.anmEnd }">&nbsp;
                                </div>
                                    </div>

                                </div>

                                <div class="input-group mb-3">

                                    <span class="input-group-text">작성일</span>
                                    <input type="date" class="form-control"
                                        aria-label="Text input with segmented dropdown button" name="AnmUploadDate" value="${anmUpdate.anmUploadDate }">

                                    <span class="input-group-text">조회</span>
                                    <input type="text" class="form-control" style="background-color: #fff !important;"
                                        aria-label="Text input with segmented dropdown button" name="AnmViewCnt" value="${anmUpdate.anmViewCnt }" readonly>

                                </div>
                                
                                <div class="input-group mb-3">

                                    <span class="input-group-text">파일</span>
                                    <input type="date" class="form-control"
                                        aria-label="Text input with segmented dropdown button" name="AnmUploadDate" value="${anmUpdate.anmFileLoca }">

                                </div>
                                
                                <div class="input-group mb-3">

                                        <input type="file" style="font-size: 15px; border-radius: 5px; border: 1px solid #e0e0e0; width: 100%;" name="AnmFileLoca">

                                </div>

                                <textarea
                                    style="border-radius: 5px; border: 1px solid #d6d6d6; resize: none; width: 100%; height: 400px;" name="AnmContent">
                                    ${anmUpdate.anmContent}

                        </textarea>

                            </div>

                        </div>

                        <!-- faq를 작성한 사용자만(아이디로 비교) 수정버튼 활성화 -->
                        <div class="notice-regi-btn">
                            <button class="btn btn-outline-secondary" type="button" id="rewriteChck" >수정</button>

                            <button class="btn btn-outline-secondary" type="button"
                                id="inputGroupFileAddon04">취소</button>
                        </div>

                    </div>
            </section>
            <input type="hidden" name="AnmNum" value="${anmUpdate.anmNum}">
        </form>

    </div>
    <!-- End Categories of The Month -->
   

    <!-- Start Featured Product -->
    <%@include file="../include/footerCommon.jsp"%>
</body>
<script>
	 $(function(){
		$('#rewriteChck').click(function(){
			document.rewriteForm.submit()
		});
		
	}); //endFunc
	
</script>
</html>