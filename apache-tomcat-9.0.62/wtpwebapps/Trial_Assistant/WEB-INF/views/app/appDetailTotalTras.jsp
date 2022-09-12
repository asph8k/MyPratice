<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>

<title>등재신청자 상세정보 조회 통번역인</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath }/resources/images/apple-icon.png" />

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
.notice-regi-title {
	margin-left: 40%;
}

section {
	height: 80% !important;
}

.notice-regi-text {
	height: 70%;
}

.notice-regi-btn {
	margin-top: 10px;
	float: right;
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
	transition: -webkit-transform .6s cubic-bezier(.08, .35, .13, 1.02),
		opacity .4s;
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

/* input 텍스트 스타일 */
.form-control{
	text-align:center;
}    
</style>

<!-- html 화면을 pdf로 파일출력을 위한 라이브러리 -->
<script src="<c:url value='/js/jspdf.min.js' />"></script>
<script src="<c:url value='/js/bluebird.min.js' />"></script>
<script src="<c:url value='/js/html2canvas.min.js' />"></script>

</head>
<body>

	<%@ include file="../include/header2.jsp"%>

	<div class="total clearfix">
		<!-- form을 감싸고 있음-->
		<div class="container side-sec">
			<div class="row">

				<div class="col-lg-3">
					<h1 class="h2 pb-4">구별 명단 관리</h1>

					<ul class="list-unstyled templatemo-accordion">
						<li class="pb-3"><a
							class="collapsed d-flex justify-content-between h3 text-decoration-none"
							onclick="location.href='<c:url value = "/app/appList?page=${param.page}&cpp=10"/>'">
								등재 신청자 정보 조회 </a></li>
						<li class="pb-3"><a
							class="collapsed d-flex justify-content-between h3 text-decoration-none myInfo"
							onclick="location.href='<c:url value = "/insapp/insappList?page=${param.page}&cpp=10"/>'">
								기관 신청자 정보 조회 </a></li>
						<li class="pb-3"><a
							class="collapsed d-flex justify-content-between h3 text-decoration-none"
							onclick="location.href='<c:url value = "/suppapp/suppappList?page=${param.page}&cpp=10"/>'">
								보완 요청자 정보 조회 </a></li>
						<li class="pb-3"><a
							class="collapsed d-flex justify-content-between h3 text-decoration-none"
							onclick="location.href='<c:url value = "/slctn/slctnList?page=${param.page}&cpp=10"/>'">
								조력자 신청 승인자 정보 조회 </a></li>
						<li class="pb-3"><a
							class="collapsed d-flex justify-content-between h3 text-decoration-none"
							onclick="location.href='<c:url value = "/unq/unqList?page=${param.page}&cpp=10"/>'">
								부적격자 명단 관리 </a></li>
					</ul>
				</div>
			</div>
		</div>

		<!-- Start Categories of The Month -->
		<section class="py-3 total-sec">

			<div class="table-box col-lg second-section">
				<!-- 타이틀 추가 -->
				<div class="announcement-detail-title">
					<h3>등재 신청자( 통 번역인 ) 상세정보 조회</h3>
				</div>
				<div
					style="display: flex; justify-content: end; margin-bottom: 20px;">
					<button class="btn btn-outline-secondary" type="file"
						id="inputGroupFileAddon04">평정기준표</button>
				</div>


				<div>
					<div id="AppTsContent">
						<div>
							<form name="delTsForm" action="<c:url value='/app/appTransUnq'/>" method="post">
							
								<div class="input-group mb-3">

									<span class="input-group-text">공고 제목</span> 
									<input type="text" class="form-control" aria-label="Text input with segmented dropdown button" value="${AppTotalTrasDet.anmTitle}" readonly>
									<span class="input-group-text">공고 차수</span>
								    <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" name="JoinId" value="${AppTotalTrasDet.anmDegree}" readonly> 
								    
								</div>
							
								<div class="input-group mb-3">

									<span class="input-group-text">이름</span> 
									<input type="text" class="form-control" aria-label="Text input with segmented dropdown button" value="${AppTotalTrasDet.tsName}" readonly>
									<span class="input-group-text">아이디</span>
								    <input type="text" id = "tsId" class="form-control" aria-label="Text input with segmented dropdown button" name="JoinId" value="${AppTotalTrasDet.joinId}" readonly> 
								    <span class="input-group-text ">주민등록번호</span>
								    <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" value="${AppTotalTrasDet.tsSocNum}" readonly>

								</div>

								<div class="input-group mb-3">

									<span class="input-group-text">집 전화번호</span> 
									<input type="text" class="form-control" aria-label="Text input with segmented dropdown button" value="${AppTotalTrasDet.tsHomeNum}" readonly> 
									<span class="input-group-text">핸드폰 번호</span> 
									<input type="text" class="form-control" aria-label="Text input with segmented dropdown button" value="${AppTotalTrasDet.tsPhoneNum}" readonly> 
									<span class="input-group-text">E-MAIL</span> 
									<input type="text" class="form-control" aria-label="Text input with segmented dropdown button" value="${AppTotalTrasDet.tsEmail}" readonly>

								</div>

								<div class="input-group mb-3">

									<span class="input-group-text">은행</span> 
									<input type="text" class="form-control" aria-label="Text input with segmented dropdown button" value="${AppTotalTrasDet.tsBank}" readonly> 
									<span class="input-group-text">예금주</span>
									<input type="text" class="form-control" aria-label="Text input with segmented dropdown button" value="${AppTotalTrasDet.tsAccHol}" readonly> 
									<span class="input-group-text">계좌번호</span> 
									<input type="text" class="form-control" aria-label="Text input with segmented dropdown button" value="${AppTotalTrasDet.tsBankNum}" readonly>

								</div>



								<div class="input-group mb-3">

									<span class="input-group-text">전문 분야</span> 
									<input type="text" class="form-control" aria-label="Text input with segmented dropdown button" value="${AppTotalTrasDet.tsExprt}" readonly> 
									<span class="input-group-text">언어</span> 
									<input type="text" class="form-control" aria-label="Text input with segmented dropdown button" value="${AppTotalTrasDet.tsLngg}" readonly> 
									<span class="input-group-text">지정 법원</span> 
									<input type="text" class="form-control" aria-label="Text input with segmented dropdown button" value="${AppTotalTrasDet.tsDsgCrt}" readonly>

								</div>

								<div class="input-group mb-3">

									<span class="input-group-text">활동 가능 지역</span>
								    <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" value="${AppTotalTrasDet.tsActiveArea}" readonly>

								</div>

								<div class="input-group mb-3">

									<span class="input-group-text">학력</span> 
									<input type="text" class="form-control" aria-label="Text input with segmented dropdown button" value="${AppTotalTrasDet.tsAcadBack}" readonly> 

								</div>

								<div class="input-group mb-3">

									<span class="input-group-text">경력</span> 
									<input type="text" class="form-control" aria-label="Text input with segmented dropdown button" value="${AppTotalTrasDet.tsCarrer}" readonly> 
<%-- 									<span class="input-group-text">경력 파일</span> <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" value="${AppTotalTrasDet.tsCarrerFile}" readonly>
 --%>
								</div>
								
								<div class="input-group mb-3">
								
									<span class="input-group-text">기본주소</span> 
									<input type="text" class="form-control" aria-label="Text input with segmented dropdown button" value="${AppTotalTrasDet.tsAddr}" readonly>
								
								</div> 

								<div class="input-group mb-3">

									
									<span class="input-group-text">상세주소</span> 
									<input type="text" class="form-control" aria-label="Text input with segmented dropdown button" value="${AppTotalTrasDet.tsDtlAddr}" readonly> 
									<span class="input-group-text">우편번호</span> 
									<input type="text" class="form-control" aria-label="Text input with segmented dropdown button" value="${AppTotalTrasDet.tsPostNum}" readonly>

								</div>
								
								<div class="input-group mb-3">
		
									<span class="input-group-text">부적격여부</span> 
									<input type="text" id = "unqualify" class="form-control" aria-label="Text input with segmented dropdown button" value="${AppTotalTrasDet.tsUnqualify}" readonly>
									 
									<span class="input-group-text">승인여부</span> 
									<input type="text" class="form-control" id = "qualify" aria-label="Text input with segmented dropdown button" value="${AppTotalTrasDet.tsQualify}" readonly>
									 
									<button class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon05">다운로드</button> 									
		                            <input type="text" class="form-control" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04"  value="${AppTotalTrasDet.tsTotalFileReal }" readonly>
											
		
								</div>  
															

								<div
									style="width: 150px; border-bottom: 4px solid #d8d8d8; margin-bottom: 10px;">
									신청자 메모</div>
								<textarea style="width: 100%; resize: none; border-radius: 5px; border: 1px solid #d6d6d6; height: 200px;" readonly>${AppTotalTrasDet.tsMemo}</textarea>
<%-- 								<div
									style="width: 150px; border-bottom: 4px solid #d8d8d8; margin-bottom: 10px;">
									부적격 사유</div>
								<textarea style="width: 100%; resize: none; border-radius: 5px; border: 1px solid #d6d6d6; height: 200px;" name="UnqReason">${AppTotalTrasDet.unqReason}</textarea> --%>
							</form>
						</div>

					</div>

					<!-- faq를 작성한 사용자만(아이디로 비교) 수정버튼 활성화 -->
					<div class="notice-regi-btn">
						<!-- <input type="file" class = "file-btn" aria-label="Upload"> -->
						<button class="btn btn-outline-secondary" type="button"
							id="savePdf">파일 출력</button>
						<button class="btn btn-outline-secondary" type="button" id="unqualifyBtn">부적격자처리</button>
                    	<button class="btn btn-outline-secondary" id = "qualifyBtn" type="button" >승인처리</button>
						<button class="btn btn-outline-secondary" type="button" id="delGhBtn">삭제</button>
<%-- 						<button class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon04"
							onclick="location.href='<c:url value="/app/appUpdateTotalTras/${AppTotalTrasDet.anmNoSeq}?page=${param.page}"/>'">수정</button>
 --%>					</div>

				</div>

			</div>

		</section>
	</div>

	<%@ include file="../include/footer1.jsp"%>

	<script>
		$(function() {
			$('#delGhBtn').click(function() {
				$('form[name=delTsForm]').attr('action', '<c:url value="/app/appDelete/${AppTotalTrasDet.appNumSeq}"/>');
				$('form[name=delTsForm]').submit();
			});
			
			//부적격 처리를 위핸 스크립트
			$('#unqBtn').click(function() {
				if(confirm('부적격 처리 하겠습니까?')) {
					document.delTsForm.submit();
					alert('부적격 처리 되었습니다.');
				}
			});
			
			// 다운로드 
			$('#inputGroupFileAddon05').click(function(){
				console.log('다운로드 버튼 클릭됨 ');
				
				if (confirm("다운로드 하시겠습니까? ")){
					location.href='<c:url value="/apply/tsDownload?fileloca=${AppTotalTrasDet.tsTotalFile}" />'
						// 파일 이름을 보내게 되면 해당 파일을 가져오도록 진행 
				}
				else{
					return;
				}

			});
			
			$('#qualifyBtn').click(function(){
				console.log('승인처리 버튼 클릭 ');
				
				const qualify = $('#qualify').val(); 
				const id = $('#tsId').val(); 
				
				console.log(qualify);
				console.log(id);
				
				if (confirm("승인처리 하시겠습니까?")){
						
					if (qualify === 'Y'){
						return;
					}
					
					else{
						$.ajax({
							type:'POST',
							url : '<c:url value="/apply/tsChangeQualify" />',
							data : id,
							contentType : 'application/json',
							
							success : function(data){
								if(data === '${AppTotalTrasDet.joinId}'){
									alert("승인 처리 완료되었습니다.");
										// 다시 똑같은 디테일로 보내기 
										// 그럴러면 아이디를 보내줘야함 
	/* 									$('#qualify').val('Y'); 
	 */									
										location.href='<c:url value="/apply/tsDetail/${AppTotalTrasDet.joinId}" />'
										
									}
									
								else{
									alert("승인 처리 실패입니다. \n 관리자에게 문의하세요." );
								}
							},
							error : function(){
								alert("승인 처리 실패입니다. \n 관리자에게 문의하세요." );
							}
							
							
						});
						// ajax 끄읏 
				}
				}
				else{
					return;
				}
				
			});
			// 승인 처리 끝 
			$('#unqualifyBtn').click(function(){
			console.log('부적격 처리 버튼 클릭 ');
			
			const unqualify = $('#unqualify').val(); 
			const id = $('#tsId').val(); 
			
			console.log(unqualify);
			console.log(id);
			
			if (confirm("부적격 처리 하시겠습니까?")){
					
				if (unqualify === 'Y'){
					return;
				}
				
				else{
					$.ajax({
						type:'POST',
						url : '<c:url value="/apply/tsChangeUnQualify" />',
						data : id,
						contentType : 'application/json',
						
						success : function(data){
							if(data === '${AppTotalTrasDet.joinId}'){
								alert("부적격 처리 완료되었습니다.");
									// 다시 똑같은 디테일로 보내기 
									// 그럴러면 아이디를 보내줘야함 
/* 									$('#qualify').val('Y'); 
 */									
								location.href='<c:url value="/apply/tsDetail/${AppTotalTrasDet.joinId}" />'
									
								}
								
							else{
								alert("부적격 처리 실패입니다. \n 관리자에게 문의하세요." );
							}
						},
						error : function(){
							alert("부적격 처리 실패입니다. \n 관리자에게 문의하세요." );
						}
						
						
					});
					// ajax 끄읏 
			}
			}
			else{
				return;
			}
			
		});
		// 부적격 처리 끝 			
			
			

				

				
				
			
			
		});
		
		
		var doc = new jsPDF();
		//var specialElementHandlers = {
		//    '#editor': function(element, renderer) {
		//        return true;
		//    }
		//}
		
		$('#savePdf').click(function() {
			console.log('pdf button click event!');
		    html2canvas($(".py-3"), {
		        onrendered : function(canvas) {
		            // 한글깨짐현상때문에 jpeg->jspdf 전환
		            var imgData = canvas.toDataURL('image/jpeg');
		            var pageWidth = 210;
		            var pageHeight = pageWidth * 1.414;
		            var imgWidth = pageWidth - 20;
		            var imgHeight = $('.py-3').height() * imgWidth / $('.py-3').width();
		            var doc = new jsPDF('p','mm',[pageHeight, pageWidth]);
		            doc.addImage(imgData, 'JPEG', 10, 10, imgWidth, imgHeight);
		            doc.save('등재신청자(통번역인).pdf');
		        }
			}
		 )
		});
		
		
	</script>

</body>
</html>