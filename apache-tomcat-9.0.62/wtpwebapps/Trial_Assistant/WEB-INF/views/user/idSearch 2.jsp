<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <title> 아이디 찾기 페이지  </title>
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

.id-search-box{
    margin: 0 auto;
    width: 400px;
}


label {
    font-weight: 700 !important;
}

button:hover{
    cursor: pointer;
}
.btn-box{
    margin-top: 100px;
    width: 800px;
}
.idSearch-btn, .cencel-btn{
    text-align: center;
    float: left;
    margin-left: 75px;
}


</style>

</head>
<body>

<jsp:include page="../include/headerCommon.jsp" /> 


<!-- Start 아이디 찾기 -->
<div class="container py-5">
    <div class="row">
        <form class="col-4 id-search-box" id="idSearchForm" action="<c:url value='/user/IdSearch' />" method="post" role="form">

            <div class="title-box">아이디 찾기</div>

         
            <div class="mb-3">
                <label for="inputJoinName">이름</label>
                <input type="text" class="form-control mt-1" id="joinName" name="JOINNAME" placeholder="이름을 입력하세요.">
            </div>
            <div class="mb-3">
                <label for="inputJoinSocNum">주민등록번호</label>
                <input type="password" class="form-control mt-1" id="joinSocNum" name="JOINSOCNUM" placeholder="주민등록번호를 입력하세요.">
            </div>
           
            <div class="btn-box mb-3">
                <div class="col mb-3 idSearch-btn">
                    <button type="submit" id="idSearch-btn" class="btn btn-outline-secondary ">아이디 찾기</button>
                </div>
                
                <div class="col mb-3 cencel-btn">
                    <button type="button" id="cencelBtn" class="btn btn-outline-secondary">취소</button>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- End 아이디 찾기 -->




<%@ include file="../include/footerCommon.jsp"%>

</body>

<script>


/* $(function() {
	$('#idSearch').click(function(){
		location.href='../user/idSearch';
	})
}) */


$(function() {
	$('#idSearch-btn').click(function() {
		if($('#joinName').val() === '') {
			alert('이름을 입력해주세요.');
			return history.back();
		} else if($('#joinSocNum').val() === '') {
			alert('주민등록번호를 입력해주세요.');
			return history.back();
		} else {
			$('#pwSearchForm').submit();
		}
	});
});

$(function() {
	 $('#cencelBtn').click(function(){
	 	location.href="<c:url value='/user/login'/>";
	 	})
	 })



</script>

</html>