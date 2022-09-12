<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


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
<title>Insert title here</title>
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

        <!-- Start Categories of The Month -->
        <form class="form-total">
            <section class="py-3 total-sec">

                <div class="table-box col-lg second-section">

                    <!-- 타이틀 추가 -->
                    <div class="announcement-detail-title">
                        <h3>신청자 승인 상세조회</h3>
                    </div>

                    <div>
                        <div style="display: flex; justify-content: end; margin-bottom: 20px;">
                            <button class="btn btn-outline-secondary" type="file"
                                id="inputGroupFileAddon04">평정기준표</button>
                        </div>
                        <div>
                            <div>
                                <div class="input-group mb-3">
									<!-- private int SelNum;
									private String SelName;
									private String SelSubcat;
									private int SelScore;
									private String JoinId;
									
									//추가
									private String TotalCLASSIFICATION;
									
									private Date TotalDate; -->
									
                                    <span class="input-group-text">신청번호</span>
                                    <input type="text" class="form-control" value="${app.selNum }"
                                        aria-label="Text input with segmented dropdown button">
                                    <span class="input-group-text">신청자</span>
                                    <input type="text" class="form-control" value="${app.selName }"
                                        aria-label="Text input with segmented dropdown button">
                                </div>

                                <div class="input-group mb-3">
									<!-- 일반 분류도 추가해야할지 -->
									<span class="input-group-text">분류</span>
                                    <input type="text" class="form-control" value="${app.appClassification }"
                                        aria-label="Text input with segmented dropdown button">
                                    <span class="input-group-text">소분류</span>
                                    <input type="text" class="form-control" value="${app.selSubcat }"
                                        aria-label="Text input with segmented dropdown button">
									
                                </div>

                                <div class="input-group mb-3">

 									<span class="input-group-text">승인 날짜</span>
                                    <input type="text" class="form-control" value="${app.appDate }"
                                        aria-label="Text input with segmented dropdown button">
                                </div>
                              





                            </div>

                        </div>

                        <!-- faq를 작성한 사용자만(아이디로 비교) 수정버튼 활성화 -->
                        <div class="notice-regi-btn">
                            <button class="btn btn-outline-secondary" type="button" id="back">뒤로가기</button>
                            <button class="btn btn-outline-secondary" type="button" id="delBtn" onclick="location.href='<c:url value="/approval/approvalDelete/${app.selNum}"/>'">승인삭제</button>
                            
                        </div>

                    </div>

                </div>

            </section>
	              <input type="hidden" name="page" value="${pc.paging.pageNum}">
		          <input type="hidden" name="cpp" value="${pc.paging.cpp}">        
        </form>

    </div>
    <!-- End Categories of The Month -->
	
	<%@include file="../include/footerCommon.jsp" %>

</body>
<script>
	/* $(function(){
		$('#back').click(){
			location.href="<c:url value='/approval/approvalList?page=1&cpp=10'/>";
		}
		$('#inputGroupFileAddon04').click(){
			var alt = alert('정말 삭제하시겠습니까?');
			if(alt){
				location.href="<c:url value='/approval/approvalDelete/${app.selNum}'/>";
			}
			
		}
	}); */
	$(function(){
		$('#back').click(function(){
			location.href="<c:url value='/approval/approvalList'/>";
		});
		
		$('#delBtn').click(function(){
			var alt = confirm('정말 삭제하시겠습니까?');
			if(alt){
				location.href="<c:url value='/approval/approvalDelete/${app.selNum}'/>";
				alert('삭제되었습니다.');
			}
		});
	});
	
	
	
	
	
	
	
	
</script>
</html>














