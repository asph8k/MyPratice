<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1" />

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
	  .pagination {
	    display: inline-block;
	    padding-left: 0;
	    margin: 20px 0;
	    border-radius: 4px;
	  }
	  .pagination > li {
	    display: inline;
	  }
	  .pagination > li > a,
	  .pagination > li > span {
	    position: relative;
	    float: left;
	    padding: 6px 12px;
	    margin-left: -1px;
	    line-height: 1.42857143;
	    color: #212934;
	    text-decoration: none;
	    background-color: #fff;
	    border: 1px solid #ddd;
	  }
	  .pagination > li:first-child > a,
	  .pagination > li:first-child > span {
	    margin-left: 0;
	    border-top-left-radius: 4px;
	    border-bottom-left-radius: 4px;
	  }
	  .pagination > li:last-child > a,
	  .pagination > li:last-child > span {
	    border-top-right-radius: 4px;
	    border-bottom-right-radius: 4px;
	  }
	  .pagination > li > a:hover,
	  .pagination > li > span:hover,
	  .pagination > li > a:focus,
	  .pagination > li > span:focus {
	    color: #212934;
	    background-color: #eee;
	    border-color: #ddd;
	  }
	  
	  .pagination > .active > a,
	  .pagination > .active > span,
	  .pagination > .active > a:hover,
	  .pagination > .active > span:hover,
	  .pagination > .active > a:focus,
	  .pagination > .active > span:focus {
	    z-index: 2;
	    color: #fff;
	    cursor: default;
	    background-color: #212934;
	    border-color: #212934;
	  }
	  .pagination > .disabled > span,
	  .pagination > .disabled > span:hover,
	  .pagination > .disabled > span:focus,
	  .pagination > .disabled > a,
	  .pagination > .disabled > a:hover,
	  .pagination > .disabled > a:focus {
	    color: #212934;
	    cursor: not-allowed;
	    background-color: #fff;
	    border-color: #ddd;
	  }
	  .pagination-lg > li > a,
	  .pagination-lg > li > span {
	    padding: 10px 16px;
	    font-size: 18px;
	  }
	  .pagination-lg > li:first-child > a,
	  .pagination-lg > li:first-child > span {
	    border-top-left-radius: 6px;
	    border-bottom-left-radius: 6px;
	  }
	  .pagination-lg > li:last-child > a,
	  .pagination-lg > li:last-child > span {
	    border-top-right-radius: 6px;
	    border-bottom-right-radius: 6px;
	  }
	  .pagination-sm > li > a,
	  .pagination-sm > li > span {
	    padding: 5px 10px;
	    font-size: 12px;
	  }
	  .pagination-sm > li:first-child > a,
	  .pagination-sm > li:first-child > span {
	    border-top-left-radius: 3px;
	    border-bottom-left-radius: 3px;
	  }
	  .pagination-sm > li:last-child > a,
	  .pagination-sm > li:last-child > span {
	    border-top-right-radius: 3px;
	    border-bottom-right-radius: 3px;
	  }
  
    #notice_hit {
      text-align: left !important;
    }

    #middle-sect {
      padding-top: 100px;
      padding-bottom: 100px;
    }

    .btn-page {
      width: 80%;
      font-size: 10px;
      padding: 0, 0%;
    }

    .andBtns {
      width: 100%;
      display: flex;
      justify-content: space-between;
    }

    .paging-btns {
      margin: 0 auto;
    }

    .del-btn {
      display: flex;
      justify-content: center;
    }

    .sec-list {
      padding: 10% !important;
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
      width: 50%;
      font-size: 20px;
    }

    /* 검색 버튼  */
    .search-btn {
      display: flex;
      justify-content: center;
      margin: 0%;
    }

    .announcement-search {
      width: 430px;
      margin-bottom: 10px;
      float: right;
      justify-content: center;
    }

    .announcement-search-input {
      margin-right: 0 !important;
      padding: 3px 9px;
      border: 1px solid #d6d6d6;
    }

    #announcement-search-btn {
      border-radius: 5px;
      border: 1px solid black;
      font-size: 15px;
      padding: 7px 9px;
      background: white;
      color: black;
      width: 70px;
    }

    .total {
      padding-bottom: 100px;
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
    
    #pagination{
      display: flex;
      justify-content: center;
    }
    #pagination li a{
      border: 1px solid #d6d6d6;
      padding: 7px;
      border-radius: 3px;
      color: #474747;
    }

    .numBtn{
      padding-left: 12px !important;
      padding-right: 12px !important;

    }
    .text-center{
      display: flex;
      justify-content: space-between;
      line-height: 46px;
    }
    .text-center button{
      border: 1px solid #d6d6d6;
      height: 46px;
      border-radius: 3px;
      color: #474747;
      background-color: white; 
    }
    
  </style>
</head>
<body>

	<%@ include file="../include/headerCommon.jsp" %>
	<nav>
		<div class="dropdown" id="dropdownbar">

            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                <li><a class="dropdown-item b1" href="#">로그인</a></li>
                <li><a class="dropdown-item b1" href="#" aria-current="true">회원가입</a></li>
                <li><a class="dropdown-item b1" href="#">마이페이지</a></li>
                <li><a class="dropdown-item b1" href="#">로그아웃</a></li>
            </ul>
        </div>
    </nav>

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
              <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="mypage_ins.html">
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
              <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="index.html">
                로그아웃
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>

    <!-- Start Categories of The Month -->
<!--     <form class="form-total">
 -->      <section class="py-3 total-sec ">
        <div class="table-box col-lg second-section ">
          <div class="more-view" id="notice_title">
            <!-- 타이틀 추가 -->
            <div class="announcement-detail-title" style="width: 400px; margin: 40px auto;">
              <h3>공고</h3>
            </div>
          </div>

          	<div class="division" style="display: flex; justify-content: flex-end; margin-bottom: 10px;" >
	            <select class="dropdown" id="condition" name="condition" style="border-radius: 3px; border: 1px solid #737373; color: #737373;">
	               <option value="일반조력자" ${param.condition == '일반조력자'? 'selected' : ''}>일반조력자</option>
	              <option value="기관추천조력자" ${param.condition == '기관추천조력자'? 'selected' : ''}>기관추천조력자</option>
	              <option value="통번역인" ${param.condition == '통번역인'? 'selected' : ''}>통번역인</option>
	            </select>
	            <input type="text" id="keywordInput" class="announcement-search-input" placeholder="검색할 제목을 입력하세요." value="${pc.paging.keyword}"/>
	            <button type="submit" id="announcement-search-btn" style="background-color: #737373; color: white; border: none;">검색</button>
	         </div>
          

          <!-- 조력자별 구분이면 버튼을 따로 만드는것보다 검색으로 하는게 더 좋을 것 같은데 
             논의 필요  -->

          <!-- <div class="notice-regi-btn">
          <button class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon04"></button>
          <button class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon04">수정</button>
          <button class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon04">수정</button>

          <button
          type="button"
          id="title-btn"
          class="btn btn-secondary dropdown-toggle"
          data-bs-toggle="dropdown"
          aria-expanded="false">
          제목
        </button>
        
        <ul class="dropdown-menu">
          <li>작성자</li>
          <li>내용</li>
          <li>제목</li>
        </ul>
        <input type="text" placeholder="검색할 제목을 입력하세요..." />
        <button id="announcement-search-btn">검색</button>
      </div> -->
        </div>

        <table class="announcement-table table table-hover">
          <thead style="background-color: #e9ecef; border-top:3px solid">
            <th scope="col">번호</th>
            <th scope="col">년도</th>
            <th scope="col">차수</th>
            <th scope="col">제목</th>
            <th scope="col">공고기간</th>
            <th scope="col">조력자구분</th>
            <th scope="col">조회수</th>
          </thead>

          <tbody >
	          <c:forEach var="vo" items="${anmList}">
	            <tr class="anm-list-tr" style="border-top : 3px solid #e9ecef">
	              <td>${vo.anmNum}</td>
	              <td>${vo.anmYear}</td>
	              <td>${vo.anmDegree}</td>
	              <!-- 밑에 a태그 안에 anmNum다음 이어지던 값. ${pc.makeURI(pc.paging.pageNum)}  -->
	              <td><a href="<c:url value='/announcement/announcementDetail/${vo.anmNum}' />">${vo.anmTitle}</a></td>
	              <td>${vo.anmStart} ~ ${vo.anmEnd}</td>
	              <td>${vo.anmDivision}</td>
	              <td id="notice_hit">${vo.anmViewCnt}</td>
	            </tr>
	          </c:forEach>
          </tbody>
          
        </table>
        
		<form action="<c:url value='/announcement/announcementList'/>" name="pageForm">
          <div class="text-center">
            <hr>
            <ul id="pagination" class="pagination pagination-sm">
            
				<c:if test="${pc.prev}">
	              <li><a href="#" data-pagenum="${pc.beginPage-1}" style="text-decoration: none;">◀</a></li>
				</c:if>
				
				<c:forEach var="num" begin="${pc.beginPage}" end="${pc.endPage}">
		            <!-- 사용자가 선택한 페이지번호와 num이 같다면 액티브. -->
              		<li><a href="#" data-pagenum="${num}" class="numBtn ${pc.paging.pageNum == num ? 'page-active' : ''}" style="text-decoration: none;">${num}</a></li>
					<input type="hidden" name="pageNum" value="${num}">
				</c:forEach>
              
	            <c:if test="${pc.next}">
	              	<li><a href="#" data-pagenum="${pc.endPage+1}" style="text-decoration: none;">▶</a></li>
				</c:if>
            </ul>
            <button type="button" id="announcement-upload">등록</button>
          </div>

          <!-- 페이지 관련 버튼(이전, 다음, 페이지번호)을 클릭 시 같이 숨겨서 보내줄 공통 값  -->
          <input type="hidden" name="page" value="${pc.paging.pageNum}">
          <input type="hidden" name="cpp" value="${pc.paging.cpp}">        
          <input type="hidden" name="condition" value="${pc.paging.condition}">
          <input type="hidden" name="keyword" value="${pc.paging.keyword}">

        </form>

      </section>
    <!-- </form> -->

  </div>
  <!-- End Categories of The Month -->


    <!-- End Section -->
    <%@ include file="../include/footerCommon.jsp" %>

</body>
<script>
 $(function() {
	 const msg = '${msg}';
 	  if(msg !== ''){
 		  alert(msg);
 	  }

     $('#pagination').on('click', 'a', function(e) {
   	 	console.log('버튼 눌림!');
        e.preventDefault(); //a태그의 고유기능 중지.

        const value = $(this).data('pagenum'); // -> jQuery
        console.log('value값');
        console.log(value);

        document.pageForm.page.value = value;
        document.pageForm.submit();
     });
     
	 
	
	$('#announcement-upload').click(function(){
		location.href="<c:url value='/announcement/announcementUpload'/>";
	});
	 
/* 	
	$('.anm-list-tr td:nth-child(4)').click(function(){
		location.href="<c:url value='/announcement/announcementDetail/{}'/>"	;
	}); */
	
	
	//검색 버튼 이벤트 처리	
	
	$('#announcement-search-btn').click(function() {
		const keyword = $('#keywordInput').val();
		const condition = $('#condition option:selected').val();
		location.href="<c:url value='/announcement/announcementList?condition=" + condition + "&keyword=" + keyword +  "&page=1&cpp=10'/>";
	});
	
	//검색창에서 엔터키 입력 시 이벤트 처리
	$('#keywordInput').keydown(function(e) {
		if(e.keyCode === 13) { //키가 13번이면 실행 (13 -> 엔터)
			$('#searchBtn').click();
		}
	});
	
  	
 
	
	
	
})
</script>
</html>
