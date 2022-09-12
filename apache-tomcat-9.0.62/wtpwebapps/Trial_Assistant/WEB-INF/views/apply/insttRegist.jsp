<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기관추천조력자 추가 신청</title>

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

</head>

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
.person-check::after {
	content: "";
	display: block;
	clear: both;
}

.person-o-total {
	float: left;
	margin-left: 100px;
}

.person-x-total {
	float: right;
	margin-right: 100px;
}

.next-btn {
	text-align: center;
}

.next-btn-box {
	margin-top: 50px;
}
/* End joinSelect.html의 css */

/* Start join.html의 css*/
.title-box {
	text-align: center;
	justify-content: center;
	margin: 0 auto 50px;
	font-size: 30px !important;
	border: 1px solid lightgray;
	border-radius: 40px;
	width: 300px;
	background-color: rgb(228, 227, 227);
	color: rgb(132, 127, 127);
	font-weight: 500 !important;
}
/*btn-outline-secondary 적용시 왼쪽 짤림 보완 스타일 */
.btn-add-style {
	border-left: 2px solid gray;
	background-color: white;
}

.form-box {
	max-width: 600px;
	min-width: 400px;
}

.gender-male-total {
	float: left;
	margin-right: 200px;
}

.gender-male, .gender-female {
	margin-right: 30px;
}

.gender::after {
	content: "";
	display: block;
	clear: both;
}

.gender {
	margin: 10px 0;
}

label {
	font-weight: 700 !important;
}

button:hover {
	cursor: pointer;
}

.join-btn, .cencel-btn {
	text-align: center;
}

.join-btn {
	margin-left: 90px;
}

.cencel-btn {
	margin-right: 90px;
}
/* End join.html의 css*/
.selectArea {
	padding-left: 30px;
}
</style>

<body>
	<jsp:include page="../include/headerCommon.jsp" /> 


	<!-- Start 회원가입 (기관) -->
	<div class="container py-5">
		<div class="row py-5">
			<div class="form-box m-auto">

				<div class="title-box">기관 추천 조력자 신청</div>

				<div class="mb-3">
					<a href="#" class="btn btn-outline-secondary">신청서 양식 다운로드</a>
				</div>

				<div class="mb-3">
					<label for="inputJoinId">사업자 번호</label>
					<div class="input-group mb-3">
						<input type="text" class="form-control" id="insttNum"
							name="joinId">
						<button id="insttChk"
							class="input-group-text btn-outline-secondary btn-add-style double-check-btn">중복확인</button>
					</div>
				</div>

    			<form name="inputForm" method="post" action="<c:url value='/apply/insttRegistForm'/>"   enctype="multipart/form-data">
					<div class="mb-3">
						<label for="inputbnsnnum">신청서 업로드하기</label><span class="msg">
						</span>
						<div class="input-group">
							<input type="file" id="file" accept=".xlsx, .xls"
								class="form-control" />

						</div>
						<span id="bnsn-num-msg">*xlsx, xls 확장자만 업로드 가능합니다.</span><!--자바스크립트에서 추가-->
						
					</div>
					
					<input type="hidden" name="AnnNum" value="${ano }">	
				</form>




				<div class="mb-3">
					<label>신청 진행 및 결과 알림</label>
					<div class="selectArea">
						<div>
							SMS <input type="checkbox" id="result-alarm">
						</div>
						<div>
							전화 <input type="checkbox" id="result-alarm">
						</div>
						<div>
							이메일 <input type="checkbox" id="result-alarm">
						</div>
					</div>
				</div>




				<div class="row">
					<div class="col mt-2 join-btn">
						<button type="button" id="cancleBtn"
							class="btn btn-outline-secondary btn-lg px-3">취소</button>
					</div>
					<div class="col mt-2 cencel-btn">
						<button type="button" id="joinBtn"
							class="btn btn-outline-secondary btn-lg px-3">가입</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End 회원가입 (기관) -->




	<%@ include file="../include/footerCommon.jsp"%>

</body>

<script>
    
    $(function(){
    	// 기관 중복 처리 완료 
    	$('#insttChk').click(function(){
    		const num = $('#insttNum').val(); 
    		
    		if(num === ''){
    			alert("중복확인은 필수입니다."); 
    			return 
    		}
    		
    		$.ajax({
    			type:'post',
    			url:'<c:url value = "/apply/insttChk"/>',
    			data : num,
    			contentType : 'application/json',
    			success:function(data){
    				 if (data === 'duplicated'){
    					 alert("등록된 사업자번호입니다. \n 파일 업로드를 진행해주세요.");
    					 $('#insttNum').attr('readonly', true); 
    				 }else{
    					 alert('등록되지 않은 사업자 번호입니다. \n 등록 후 진행해주세요 ');
    				 }
    			},
    			error: function(){
    				console.log(data); 
    				alert('서버 에러입니다. 관리자에세 문의하세요. ');
    			}
    			
    		}); 
    		
    	});
    	// 아이디 중복 체크 끝 
    	
    	$('#cancleBtn').click(function(){
    		if(confirm("등록을 취소하시겠습니까? ")){
    			history.back();
    		}
    		else{
    			return;
    		}
    		
    	});
    	// 취소 버튼 
    	
    	$('#joinBtn').click(function(){
    		if (confirm('등록하시겠습니까?')){
    			
    			if($('#file').val() === '') {
    				alert('xlsx, xls 파일을 업로드 하셔야합니다.');
    			} else{
    				document.inputForm.submit();
    			}
    		}else{
    			return; 
    		}
    	});
    	// 가입 버튼 
    	
    	
    });

    
</script>


</html>