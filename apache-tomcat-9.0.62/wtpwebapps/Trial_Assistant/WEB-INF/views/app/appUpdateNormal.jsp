<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html>
<html>
<head>

	<title>등재신청자 정보 수정 일반조력자</title>
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

</style>

</head>
<body>

	<%@ include file="../include/header2.jsp"%>
	
	        <!-- side바 추가 -->
        <div class="total clearfix">
            <!-- form을 감싸고 있음-->
            <div class="container side-sec">
                
                <div class="row">
        
                    <div class="col-lg-3">
                        <h1 class="h2 pb-4">구별 명단 관리</h1>
                  
                  <ul class="list-unstyled templatemo-accordion">
                      <li class="pb-3">
                          <a class="collapsed d-flex justify-content-between h3 text-decoration-none" onclick="location.href='<c:url value = "/app/appList?page=${param.page}&cpp=10"/>'">
                          	등재 신청자 정보 조회
                          </a>
                      </li>
                      <li class="pb-3">
                          <a class="collapsed d-flex justify-content-between h3 text-decoration-none myInfo" onclick="location.href='<c:url value = "/insapp/insappList?page=${param.page}&cpp=10"/>'">
                          	기관 신청자 정보 조회
                          </a>
                      </li>
                      <li class="pb-3">
                          <a class="collapsed d-flex justify-content-between h3 text-decoration-none" onclick="location.href='<c:url value = "/suppapp/suppappList?page=${param.page}&cpp=10"/>'">
                          	보완 요청자 정보 조회
                          </a>
                      </li>
                      <li class="pb-3">
                          <a class="collapsed d-flex justify-content-between h3 text-decoration-none" onclick="location.href='<c:url value = "/slctn/slctnList?page=${param.page}&cpp=10"/>'">
                          	조력자 신청 승인자 정보 조회
                          </a>
                      </li>
                      <li class="pb-3">
                          <a class="collapsed d-flex justify-content-between h3 text-decoration-none" onclick="location.href='<c:url value = "/unq/unqList?page=${param.page}&cpp=10"/>'">
                          	부적격자 명단 관리
                          </a>
                      </li>
                  </ul>
                    </div>
                </div>
            </div>
        

        <section class = "py-3 total-sec">

        <div class="table-box col-lg second-section" >
            <!-- 타이틀 추가 -->
            <div class="announcement-detail-title">
                <h3>등재 신청자( 일반 조력 ) 정보 수정</h3>
            </div>


            <div>
                <div>
                    <div>
                    <form action="<c:url value='/app/appUpdateNormal'/>" name="GhupdateForm" method="post">
                        <div class="input-group mb-3">

                            <span class="input-group-text">이름</span>
                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" name="GhName" value="${AppGhUpdt.ghName}" readonly>

                            <span class="input-group-text">아이디</span>
                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" name="JoinId" value="${AppGhUpdt.joinId}" readonly>

                            <span class="input-group-text ">주민등록번호</span>
                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" name="GhSocNum" value="${AppGhUpdt.ghSocNum}" readonly>

                        </div>   

                        <div class="input-group mb-3">

                            <span class="input-group-text">집 전화번호</span>
                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" name="GhHomeNum" value="${AppGhUpdt.ghHomeNum}" readonly>

                            <span class="input-group-text">핸드폰 번호</span>
                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" name="GhPhoneNum" value="${AppGhUpdt.ghPhoneNum}" readonly>

                            <span class="input-group-text">E-MAIL</span>
                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" name="GhEmail" value="${AppGhUpdt.ghEmail}" readonly>

                        </div> 

                        <div class="input-group mb-3">

                            <span class="input-group-text">직업</span>
                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" name="GhJob" value="${AppGhUpdt.ghJob}" readonly>

                            <span class="input-group-text">팩스 번호</span>
                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" name="GhFax" value="${AppGhUpdt.ghFax}" readonly>

                        </div> 

                        <div class="input-group mb-3">

                            <span class="input-group-text">은행</span>
                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" name="GhBank" value="${AppGhUpdt.ghBank}" readonly>

                            <span class="input-group-text">예금주</span>
                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" name="GhAccHol" value="${AppGhUpdt.ghAccHol}" readonly>

                            <span class="input-group-text">계좌번호</span>
                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" name="GhBankNum" value="${AppGhUpdt.ghBankNum}" readonly>

                        </div> 

                        <div class="input-group mb-3">

                            <span class="input-group-text">조력자 구분</span>
                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" name="GhSrttn" value="${AppGhUpdt.ghSrttn}" readonly>

                            <span class="input-group-text">조력자 세부 구분</span>
                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" name="GhDtlSrttn" value="${AppGhUpdt.ghDtlSrttn}" readonly>

                            <span class="input-group-text">조력자 연도</span>
                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" name="GhYear" value="${AppGhUpdt.ghYear}" readonly>

                        </div> 

                        <div class="input-group mb-3">

                            <span class="input-group-text">사업자 번호</span>
                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" name="GhBsnsNum" value="${AppGhUpdt.ghBsnsNum}" readonly>

                            <span class="input-group-text">소속 기관 번호</span>
                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" name="GhOfcNum" value="${AppGhUpdt.ghOfcNum}" readonly>

                            <span class="input-group-text">사무소 명</span>
                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" name="GhOfcName" value="${AppGhUpdt.ghOfcName}" readonly>

                        </div> 

                        <div class="input-group mb-3">

                            <span class="input-group-text">학력</span>
                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" name="GhAcadBack" value="${AppGhUpdt.ghAcadBack}" readonly>

                            <span class="input-group-text">학력 파일</span>
                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" name="GhAcadBackFile" value="${AppGhUpdt.ghAcadBackFile}" readonly>

                        </div> 

                        <div class="input-group mb-3">

                            <span class="input-group-text">경력</span>
                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" name="GhCarrer" value="${AppGhUpdt.ghCarrer}" readonly>

                            <span class="input-group-text">경력 파일</span>
                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" name="GhCarrerFile" value="${AppGhUpdt.ghCarrerFile}" readonly>

                        </div> 

                        <div class="input-group mb-3">

                            <span class="input-group-text">기본주소</span>
                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" name="GhAddr" value="${AppGhUpdt.ghAddr}" readonly>

                            <span class="input-group-text">상세주소</span>
                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" name="GhDtlAddr" value="${AppGhUpdt.ghDtlAddr}" readonly>

                            <span class="input-group-text">우편번호</span>
                            <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" name="GhPostNum" value="${AppGhUpdt.ghPostNum}" readonly>

                        </div>
                        <div style="width: 150px; border-bottom: 4px solid #d8d8d8; margin-bottom: 10px;">
							신청자 메모</div>
						<textarea style="width: 100%; resize: none; border-radius: 5px; border: 1px solid #d6d6d6; height: 200px;" name="GhMemo">${AppGhUpdt.ghMemo}</textarea>
						<div
							style="width: 150px; border-bottom: 4px solid #d8d8d8; margin-bottom: 10px;">
							부적격 사유</div>
						<textarea style="width: 100%; resize: none; border-radius: 5px; border: 1px solid #d6d6d6; height: 200px;">${AppGhUpdt.unqReason}</textarea>
                        <input type="hidden" name="GhNum" value="${AppGhUpdt.ghNumSeq}">
					</form>
                    </div>
                    
                </div>

                <!-- faq를 작성한 사용자만(아이디로 비교) 수정버튼 활성화 -->
                <div class="notice-regi-btn">

                    <button class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon04" onclick="location.href='<c:url value="/app/appDetailNormal/${AppGhUpdt.anmNoSeq}?page=${param.page}"/>'">취소</button>
                    <button class="btn btn-outline-secondary" type="button" id="updateGhBtn">수정</button>
                </div>

            </div>

        </div>            
    </section>
</div>
	
	<%@ include file="../include/footer1.jsp"%>

	<script>
		$(function() {
			$('#updateGhBtn').click(function() {
				document.GhupdateForm.submit();
			});
		});
	</script>

</body>
</html>