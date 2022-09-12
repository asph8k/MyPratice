<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
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
.titlefoot {
	text-align: center;
	margin: 70px auto;
}

#bnsn-num-msg {
	font-size: 80%;
	color: red;
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

#result-alarm {
	display: inline-block;
	width: 20px;
	height: 15px;
	border: 2px solid #bcbcbc;
	cursor: pointer;
}
</style>

<body>

	<jsp:include page="../include/header.jsp" />

	<!-- Start Content -->
	<div class="container py-5">
		<div class="row">
			<div class="container-fluid py-3">
				<section class="container py-5">
					<div>
						<h1>기관 추천 조력자 신청</h1>
						<hr width="1250">
					</div>
				</section>
			</div>


			<form name="inputForm" method="post" onsubmit="return _onSubmit();"
				action="<c:url value='/apply/insttRegistForm'/>"
				enctype="multipart/form-data"
				class="form-horizontal col-md-5 m-auto">
				<div class="mb-3">
					<label for="inputbnsnnum">사업자 번호</label>
					<div class="input-group">
						<input type="text" class="form-control" id="bnsn-num"
							name="bnsn-num">
						<button class="btn btn-success">기관 등록 여부 확인</button>
					</div>
					<span id="bnsn-num-msg">*필수 사항입니다.</span>
					<!--자바스크립트에서 추가-->
				</div>	
				</form>


					<br> <br>
					<div class="mb-3">
						<label for="inputbnsnnum">신청서 업로드하기</label><span id="bnsn-num-msg">
							*필수 사항입니다.</span>
						<div class="input-group">
							<input type="file" name="file" id="file" accept=".xlsx, .xls"
								class="form-control" /> <input type="submit" value="엑셀파일 업로드"
								class="btn btn btn-success" /> 첨부할 파일을 선택하고 업로드하기를 눌러주세요
						</div>

						<br>

						<div class="pull-right">
							<a href="${path}/document/applicant_excelUpload_form.xlsx"
								class="btn btn-outline-secondary">신청서 양식 다운로드</a>
						</div>


						<p></p>
						<br>

						<form class="form-total"
							action="<c:url value='/apply/insttFile' />" method="post"
							name="apply/insttFile" enctype="multipart/form-data">
							학력/경력 파일 <input type="file" name="file" class="form-control"
								multiple="multiple" id="inputGroupFile04"
								aria-describedby="inputGroupFileAddon04" aria-label="Upload"><span
								id="bnsn-num-msg">*필수 사항입니다.</span>
						</form>

						<p></p>
						<br>

						<div class="form-group">
							<label for="hp-result-alram">신청 진행 및 결과 알림</label>
							<div id="hp-result-alram">
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
					</div>
			</form>
			<!-- End Content -->



			<!-- Start Brands -->
			<section class="py-5">
				<div class="container my-4">
					<div class="row text-center py-3">
						<div class="col-lg-6 m-auto"></div>


					</div>

					<div class="titlefoot col mt-2">
						<button type="submit" class="btn btn-secondary btn-lg px-3"
							id="prevBtn">이전</button>
						<button type="button" class="btn btn-secondary btn-lg px-3"
							id="insttNextBtn">다음</button>
					</div>

				</div>
		</div>

	</div>
	</div>
	</div>
	</div>
	</section>
	<!--End Brands-->

	<%@ include file="../include/footer1.jsp"%>

</body>

<script>
    
	    $(document).ready(function() {
	      var msg = "${resMap.msg}";
	        if(msg != "") alert(msg);
	    });
	    
	    function _onSubmit(){
	        
	        if($("#file").val() == ""){
	            alert("파일을 업로드해주세요.");
	            $("#file").focus();
	            return false;
	        }
	        
	        if(!confirm(gTxt("confirm.save"))){
	            return false;
	        }
	        
	        return true;
	    }
	    
	    $(function() {
			$('#insttNextBtn').click(function() {
				if($('input[name=ghName]').val() === '') {
					alert('이름은 필수 항목입니다.');
					$('input[name=ghName]').focus();
					return;
				
				} else {
					document.insttFile.submit();
				}
			});
			
			/* $('#nextBtn').click(function() {
				if(confirm('등록 하시겠습니까?')) {
					location.href='<c:url value="/apply/success" />'
				} else return;
			}) */

		});
    
	</script>


</html>  --%>