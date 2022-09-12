<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <title> 비밀번호 찾기 페이지  </title>
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
	
.complete-text{
   text-align: center;
   margin-bottom: 50px;
   color: #676767;
    }
	
	
	.msg{
 
      font-size: 70%;
      color: red;
}
	
	.title-box{
    text-align: center;
    justify-content: center;
    margin: 0 auto 100px;
    font-size: 30px !important;
    border:1px solid lightgray;
    border-radius: 40px;
    width: 300px;
    background-color: rgb(228, 227, 227);
    color: rgb(132, 127, 127);
    font-weight: 500 !important;
}

.new_pw_box{
    max-width: 400px;
    min-width: 300px;
}

label {
    font-weight: 700 !important;
}

button:hover{
    cursor: pointer;
}
.btn-box{
    margin-top: 100px;
    width: 100%;
    text-align: center;
}
.Search-btn .cencel-btn{
    text-align: center;
}

.Search-btn{
    margin: 0 50px;
        box-sizing: border-box;
        display: inline-block;
}
.cencel-btn{
    margin: 0 50px;
        box-sizing: border-box;
        display: inline-block;
}
/* End join.html의 css*/

#displayx{
display:none
}

</style>

	
</head>
<body>

<jsp:include page="../include/headerCommon.jsp" /> 


<!-- Start 새 비밀번호 등록  -->
<div class="py-5">
    <div>
        <form class="new_pw_box m-auto" id="newPwForm" action="<c:url value='/user/NewPwRegist'/>" method="post" role="form">

            <div class="title-box">새 비밀번호 등록</div>
            
             <div class="mb-3">
                
                <input type="hidden" class="form-control mt-1" id="joinName displayx" name="JOINNAME" value=${user.JOINNAME} readonly>
            </div>
            <div class="mb-3">
                
                <input type="hidden" class="form-control mt-1" id="joinSocNum displayx" name="JOINSOCNUM" value=${user.JOINSOCNUM} readonly>
            </div>

         
            <div class="mb-3">
                <label for="inputjoinPw">새 비밀번호</label>
                <input type="password" class="form-control mt-1" id="joinPw" name="JOINPW" placeholder="새 비밀번호를 입력하세요.">
                <span class="msg" id="msgPw"></span><!--자바스크립트에서 추가-->
            </div>
            <div class="mb-3">
                <label for="inputPwCheck">새 비밀번호 확인</label>
                <input type="password" class="form-control mt-1" id="joinPwCheck" name="pwCheck">
            	<span class="msg" id="msgPw-c"></span><!--자바스크립트에서 추가-->
            </div>
           
            <div class="btn-box">
                <div class="col mt-2 Search-btn">
                    <button type="button" id="newPwBtn"class="btn btn-outline-secondary px-3">비밀번호 등록</button>
                </div>
                
                <div class="col mt-2 cencel-btn">
                    <button type="button" id="cencel" class="btn btn-outline-secondary px-3">취소</button>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- End 새 비밀번호 등록  -->


<%@ include file="../include/footerCommon.jsp"%>

</body>

<script>



	/*비밀번호 형식 검사 스크립트*/
	var pw = document.getElementById("joinPw");
	pw.onkeyup = function(){
	    var regex = /^[A-Za-z0-9+]{8,16}$/;
	     if(regex.test(document.getElementById("joinPw").value )) {
	        document.getElementById("joinPw").style.borderColor = "green";
	        document.getElementById("msgPw").innerHTML = "사용가능합니다";
	        document.getElementById("msgPw").style.color = "green";
	    } else {
	        document.getElementById("joinPw").style.borderColor = "red";
	        document.getElementById("joinPw").innerHTML = "";
	    }
	}
	/*비밀번호 확인검사*/
	var joinPwCheck = document.getElementById("joinPwCheck");
	joinPwCheck.onkeyup = function() {
	    var regex = /^[A-Za-z0-9+]{8,16}$/;
	    if(document.getElementById("joinPwCheck").value == document.getElementById("joinPw").value ) {
	        document.getElementById("joinPwCheck").style.borderColor = "green";
	        document.getElementById("msgPw-c").innerHTML = "비밀번호가 일치합니다";
	        document.getElementById("msgPw-c").style.color = "green";
	    } else {
	        document.getElementById("joinPwCheck").style.borderColor = "red";
	        document.getElementById("msgPw-c").innerHTML = "비밀번호 확인란을 확인하세요";
	    }
	}        

	
	
	$(function() {
		$('#newPwBtn').click(function() {
			if($('#joinPw').val() === '') {
				alert('새 비밀번호를 입력해주세요.');
				return;
			} else if($('#joinPwCheck').val() === '') {
				alert('비밀번호를 확인 해주세요.');
				return;
			} else {
				$('#newPwForm').submit();
			}
		});
	});
	
	$(function() {
		$('#idSearch').click(function(){
			location.href="<c:url value='/user/mypagePersonModif'/>";
		})
	})
	

</script>
</html>