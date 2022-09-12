<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <title> 회원가입(기관) 정보입력 페이지  </title>
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
/* Start joinSelect.css */

.person-check::after{
    content: "";
    display: block;
    clear: both;
}

.person-o-total{
    float: left;
    margin-left: 100px;
}
.person-x-total{
    float: right;
    margin-right: 100px;
}
.next-btn{
    text-align: center;
}

.next-btn-box{
    margin-top: 50px;
}

.msg{
 
      font-size: 70%;
      color: red;
}
#mail-check-warn{
	font-size: 70%;
      color: red;
}

/* End joinSelect.html의 css */

/* Start join.html의 css*/
.title-box{
    text-align: center;
    justify-content: center;
    margin: 0 auto 50px;
    font-size: 30px !important;
    border:1px solid lightgray;
    border-radius: 40px;
    width: 200px;
    background-color: rgb(228, 227, 227);
    color: rgb(132, 127, 127);
    font-weight: 500 !important;
}
#msgId{
 
      font-size: 70%;
      color: red;
}
#mail-check-warn{
	font-size: 70%;
      color: red;
}



/*btn-outline-secondary 적용시 왼쪽 짤림 보완 스타일 */
.btn-add-style{
    border-left: 2px solid gray;
    background-color: white;

}



.form-box{
    max-width: 600px;
    min-width: 400px;
}
.gender-male-total{
    float: left;
    margin-right: 200px;
}
.gender-male, .gender-female{
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

button:hover{
    cursor: pointer;
}

.join-btn, .cencel-btn{
    text-align: center;
}

.join-btn{
    margin-left: 90px;
}
.cencel-btn{
    margin-right: 90px;
}
/* End join.html의 css*/


</style>
</head>
<body>
	<jsp:include page="../include/headerCommon.jsp" /> 


<!-- Start 회원가입 (기관) -->
<div class="container py-5">
    <div class="row py-5">
        <form class="form-box m-auto" method="post" role="form" id="joinForm" action="<c:url value='/user/joiniins'/>">

            <div class="title-box">회원가입</div>

            <div class="mb-3">
                <label for="inputJoinId">아이디</label>
                <div class="input-group">
                    <input type="text" class="form-control" id="joinId" name="JOINID" placeholder="아이디를 입력하세요.">
                    <button type="button" class="input-group-text btn-add-style btn-outline-secondary double-check-btn" id="double-check-btn">중복확인</button>
                </div>
               <span class="msg" id="msgId">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
            </div>
            <div class="mb-3">
                <label for="inputJoinPw password">비밀번호</label>
                <input type="password" class="form-control mt-1" id="joinPw" name="JOINPW" placeholder="비밀번호 (영 대/소문자, 숫자 조합 8~16자 이상)">
                <span class="msg" id="msgPw">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
            </div>
            <div class="mb-3">
                <label for="inputJoinPwCheck">비밀번호 확인</label>
                <input type="password" class="form-control mt-1" id="joinPwCheck" name="joinPwCheck" placeholder="비밀번호를 확인해주세요.">
                <span class="msg" id="msgPw-c">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
            </div>
            <div class="mb-3">
                <label for="inputJoinName">이름</label>
                <input type="text" class="form-control mt-1" id="joinName" name="JOINNAME" placeholder="이름을 입력하세요.">
                <span class="msg" id="msgName">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
            </div>
            <div class="row">
                <div class="form-group col-md-6 mb-2">
                    <label for="inputname">주민등록번호</label>
                    <input type="text" class="form-control mt-1" id="joinSocNum1" name="JOINSOCNUM1" placeholder="앞 6자리">
                    <span class="msg" id="msgSocNum">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                </div>

                <div class="form-group col-md-6 mb-2">
                    <label for="inputemail"></label>
                    <input type="text" class="form-control mt-1" id="joinSocNum2" name="JOINSOCNUM2" placeholder="뒷 7자리">
                </div>
            </div>
            <div class="mb-3 gender-total">
                <label for="inputsubject">성별</label>
                <div class="gender">
                    <div class="gender-male-total">
                        <input type="radio" class="gender-male" id="male" name="JOINGEN" value="남성" /><label for="male">남성</label>
                    </div>
                    <div class="gender-female-total">
                        <input type="radio" class="gender-female" id="female" name="JOINGEN" value="여성" ><label for="female">여성</label>
                    </div>
                    <span class="msg" id="msgGen">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                </div>
            </div>
            <div class="col-auto mb-3">
                <label class="" for="inputsubject">이메일</label>
                <div class="input-group mb-3">
                    <input type="text" class="form-control" id="joinEmail1" name="JOINEMAIL1">
                        <select class="form-control" id="joinEmail2" name="JOINEMAIL2">
                            <option disabled selected>▼ 선택해주세요.</option>
                            <option>@naver.com</option>
                             <option>@daum.com</option>
                             <option>@hanmail.net</option>
                            <option>@gmail.com</option>
                            <option>@yahoo.co.kr</option>
                            <option>@daum.net</option>
                        </select>
                    <button type="button" id="mail-check-btn" class="input-group-text btn-add-style btn-outline-secondary">메일 전송</button>
                </div>
                <div class="input-group">
                    <input type="text" class="form-control mail-check-input" placeholder="인증번호 6자리를 입력해주세요." maxlength="6" disabled="disabled">
                    <button type="button" class="input-group-text btn-add-style btn-outline-secondary">인증 하기</button>
                </div>
                <span class="msg" id="mail-check-warn"></span>
            </div>
            
            <div class="col-auto mb-3">
                <label class="JoinPhone" for="inputJoinPhone">휴대전화</label>
                <div class="input-group">
                    <input type="text" class="form-control" id="joinPhone" name="JOINPHONE" placeholder='"-"기호를 제외하고 입력해 주세요.'>
                    <button type="button" class="input-group-text btn-add-style btn-outline-secondary">번호 인증</button>
                </div>
                <span class="msg" id="msgPhone">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
            </div>
            
            <div class="col-auto mb-3">
                <label class="JoinAddrBasic" for="inputJoinAddrBasic">우편번호</label>
                <div class="input-group">
                    <input type="text" class="form-control" id="joinAddrNum" name="JOINADDRNUM" placeholder="우편번호" readonly>
                    <button type="button" onclick="searchAddress1()" class="input-group-text btn-add-style btn-outline-secondary">주소 찾기</button>
                </div>
                <!-- <span id="msgId msg">*필수 사항입니다.</span>자바스크립트에서 추가 -->
            </div>
            
            <div class="col-auto mb-3">
                <!-- <label class="JoinAddrBasic" for="inputJoinAddrBasic">기본주소</label> -->
                <div class="input-group">
                    <input type="text" class="form-control" id="joinAddrBasic" name="JOINADDRBASIC" placeholder="기본주소">
                    <!-- <button class="input-group-text btn-add-style btn-outline-secondary">주소 찾기</button> -->
                </div>
               <!--  <span id="msgId">*필수 사항입니다.</span>자바스크립트에서 추가 -->
            </div>
            <div class="mb-3">
                <!-- <label class="JoinAddrDetail for="inputJoinAddrDetail">상세주소</label> -->
                <input type="text" class="form-control mt-1" id="joinAddrDetail" name="JOINADDRDETAIL" placeholder="상세주소">
                <span class="msg" id="msgAddr">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
            </div>
            <div class="col-auto mb-3">
                <label for="inputInsName">기관명</label>
                <input type="text" class="form-control mt-1" id="insName" name="INSNAME" placeholder="기관명을 입력해주세요.">
                <span class="msg" id="msgId">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
            </div>

            <div class="col-auto mb-3">
                <label for="inputInsNum">사업자 번호</label>
                <input type="text" class="form-control mt-1" id="insSocNum" name="INSSOCNUM" placeholder='"-"기호를 제외하고 입력해주세요.'>
                <span class="msg" id="msgId">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
            </div>
           <div class="col-auto mb-3">
                <label class="JoinAddrBasic" for="inputJoinAddrBasic">우편번호</label>
                <div class="input-group">
                    <input type="text" class="form-control" id="insAddrNum" name="INSADDRNUM" placeholder="우편번호" readonly>
                    <button type="button" onclick="searchAddress2()" class="input-group-text btn-add-style btn-outline-secondary">주소 찾기</button>
                </div>
                <!-- <span id="msgId msg">*필수 사항입니다.</span>자바스크립트에서 추가 -->
            </div>
            
            <div class="col-auto mb-3">
                <!-- <label class="JoinAddrBasic" for="inputJoinAddrBasic">기본주소</label> -->
                <div class="input-group">
                    <input type="text" class="form-control" id="insAddrBasic" name="INSADDRBASIC" placeholder="기본주소">
                    <!-- <button class="input-group-text btn-add-style btn-outline-secondary">주소 찾기</button> -->
                </div>
               <!--  <span id="msgId">*필수 사항입니다.</span>자바스크립트에서 추가 -->
            </div>
            <div class="mb-3">
                <!-- <label class="JoinAddrDetail for="inputJoinAddrDetail">상세주소</label> -->
                <input type="text" class="form-control mt-1" id="insAddrDetail" name="INSADDRDETAIL" placeholder="상세주소">
                <span class="msg" id="msgAddr">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
            </div>
            
            
            
            
            <div class="row">
                <div class="col mt-2 join-btn">
                    <button type="submit" class="btn btn-outline-secondary btn-lg px-3">가입</button>
                </div>
                <div class="col mt-2 cencel-btn">
                    <button type="submit" class="btn btn-outline-secondary btn-lg px-3">취소</button>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- End 회원가입 (기관) -->


<%@ include file="../include/footerCommon.jsp"%>



</body>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript">

$(function() {
	let code = ''; // 이메일 전송 인증 번호 저장을 위한 변수 
	
	//아이디 중복 체크 
	$('#double-check-btn').click(function() {
		
		const JOINID = $('#joinId').val();
		
		if(JOINID === ''){
			alert('아이디는 필수값입니다.');
			return;
			
		} 
		
		$.ajax({
			type: 'post',
			url: '<c:url value="/user/idCheck" />',
			data: JOINID,
			contentType: 'application/json',
			success: function(data) {
				if(data === 'ok') {
					$('#joinId').attr('readonly', true);
					$('#joinId').css('border-color', 'green');
					$('#msgId').html('사용 가능한 아이디입니다.');
					$('#msgId').css('color', 'green');
				} else if(data === 'no') {
					$('#msgId').html('중복된 아이디입니다.');
				}
			},
			error: function() {
				console.log(data);
				alert('서버 에러입니다. 관리자에게 문의하세요.');
			}
		}); //중복확인 비동기 통신 끝.
		
	}); //아이디 중복 체크 끝.
	
	
	//인증번호 이메일 전송
	$('#mail-check-btn').click(function() {
		const joinEmail = $('#joinEmail1').val() + $('#joinEmail2').val();
		console.log('완성된 이메일: ' + joinEmail);
		
		$.ajax({
			type: 'GET',
			url: '<c:url value="/user/mailCheck?joinEmail=" />' + joinEmail,
			success: function(data) {
				console.log('컨트롤러가 전달한 인증번호: ' + data);
				$('.mail-check-input').attr('disabled', false); //비활성된 인증번호 입력창 활성화.
				code = data;
				alert('인증번호가 전송되었습니다. 확인 후 입력란에 정확하게 입력하세요!');
			},
			error: function() {
				console.log(data);
				alert('이메일 서버 에러입니다. 관리자에게 문의하세요.');
			}
		}); //end ajax(이메일 전송)
		
	}); //이메일 전송 끝.
	
	//인증번호 비교
	//blur -> focus가 벗어나는 경우 발생
	$('.mail-check-input').blur(function() {
			const inputCode = $(this).val();
			const $resultMsg = $('#mail-check-warn');
			
			if(inputCode === code) {
				$resultMsg.html('인증번호가 일치합니다.');
				$resultMsg.css('color', 'green');
				$('#mail-check-btn').attr('disabled', true); //이메일 인증 못하게 버튼 비활성.
				$('#joinEmail1').attr('readonly', true);
				$('#joinEmail2').attr('readonly', true);
				$(this).attr('readonly', true);
				
				//초기값을 사용자가 선택한 값으로 무조건 설정하는 방법.(select에서 readonly 대용)
				//2개 같이 쓰셔야 해요.
				$('#joinEmail2').attr('onFocus', 'this.initialSelect = this.selectedIndex');
				$('#joinEmail2').attr('onChange', 'this.selectedIndex = this.initialSelect');
			} else {
				$resultMsg.html('인증번호를 다시 확인해 주세요.');
				$resultMsg.css('color', 'red');
			}
			
		}); //인증번호 이벤트 끝..
	
		
		//회원가입 버튼클릭 (폼 데이터 검증)
		
	$('#joinBtn').click(function() {
		if(!$('#joinId').attr('readonly')) {
			alert('아이디 중복체크는 필수입니다.');
			return;
		} else if($('#joinPw').val() === '' || $('#joinPw').val() !== $('#joinPwCheck').val()) {
			alert('비밀번호 규칙을 확인하세요.');
			$('#joinPw').focus();
			return;
		} else if($('#joinName').val() === '') {
			alert('이름은 필수입니다.');
			$('#joinName').focus();
			return;
		} else {
			console.log('회원가입요청')
			$('#joinForm').submit();
		}
	});
	
	
	
	
	
}); // 제이쿼리 끝 





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



/*아이디 형식 검사 스크립트*/
var id = document.getElementById("joinId");
id.onkeyup = function() {
    /*자바스크립트의 정규표현식 입니다*/
    /*test메서드를 통해 비교하며, 매칭되면 true, 아니면 false반*/
    var regex = /^[A-Za-z0-9+]{4,12}$/; 
    if(regex.test(document.getElementById("joinId").value )) {
        document.getElementById("joinId").style.borderColor = "green";
        document.getElementById("msgId").innerHTML = "아이디 중복체크는 필수 입니다";

    } else {
        document.getElementById("joinId").style.borderColor = "red";
        document.getElementById("msgId").innerHTML = "";
    }
}


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





</script>




</html>