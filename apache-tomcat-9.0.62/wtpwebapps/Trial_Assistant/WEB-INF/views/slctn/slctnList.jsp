<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html>
<html>
<head>

	<title>조력자 신청 승인자 정보 목록</title>
    <meta charset="utf-8" />
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

      .del-btn{
        display: flex;
        justify-content : center;
      }

      .sec-list{
        padding: 10% !important;
      }

      .file-btn{
    font-size: 15px !important;
    font-weight: 500;
}
.sec-list{
        padding: 10% !important;
}


/* 여기서부터 추가 */
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
    width: 50%;
    font-size: 20px;
}

/* 검색 버튼  */
.search-btn{
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
        border-radius: 5px;
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

      .total{
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
    </style>

</head>
<body>

	<jsp:include page="../include/header2.jsp" />
	
	        <!-- side바 추가 -->
      <div class="total clearfix">
          <!-- form을 감싸고 있음-->
      <div class="container side-sec">
          <div class="row">
  
            <div class="col-lg-3">
              <h1 class="h2 pb-4">구별 명단 관리</h1>
                  
                  <ul class="list-unstyled templatemo-accordion">
                      <li class="pb-3">
                          <a class="collapsed d-flex justify-content-between h3 text-decoration-none" onclick="location.href='<c:url value = "/app/appList?page=1&cpp=10"/>'">
                          	등재 신청자 정보 조회
                          </a>
                      </li>
                      <li class="pb-3">
                          <a class="collapsed d-flex justify-content-between h3 text-decoration-none myInfo" onclick="location.href='<c:url value = "/insapp/insappList?page=1&cpp=10"/>'">
                          	기관 신청자 정보 조회
                          </a>
                      </li>
                      <li class="pb-3">
                          <a class="collapsed d-flex justify-content-between h3 text-decoration-none" onclick="location.href='<c:url value = "/suppapp/suppappList?page=1&cpp=10"/>'">
                          	보완 요청자 정보 조회
                          </a>
                      </li>
                      <li class="pb-3">
                          <a class="collapsed d-flex justify-content-between h3 text-decoration-none" onclick="location.href='<c:url value = "/slctn/slctnList?page=1&cpp=10"/>'">
                          	조력자 신청 승인자 정보 조회
                          </a>
                      </li>
                      <li class="pb-3">
                          <a class="collapsed d-flex justify-content-between h3 text-decoration-none" onclick="location.href='<c:url value = "/unq/unqList?page=1&cpp=10"/>'">
                          	부적격자 명단 관리
                          </a>
                      </li>
                  </ul>
          	</div>
          </div>
      </div>

    <!-- Start Categories of The Month -->
    <form class="form-total">
      <section class = "py-3 total-sec ">
        <div class="table-box col-lg second-section ">
        <div class="more-view" id="notice_title">
          <!-- 타이틀 추가 -->
          <div class="announcement-detail-title">
              <h3>조력자 신청 승인자 목록 조회</h3>
          </div>
        </div>

        <div class="announcement-search dropup">
          <button
            type="button"
            id="title-btn"
            class="btn btn-secondary dropdown-toggle"
            data-bs-toggle="dropdown"
            aria-expanded="false">
            	일반조력자
          </button>
          
          <ul class="dropdown-menu">
            <li>기관추천조력자</li>
            <li>통번역인</li>
            <li>일반조력자</li>
          </ul>
          <input type="text" class="announcement-search-input" placeholder="검색할 아이디 입력하세요." />
          <button id="announcement-search-btn">검색</button>
        </div>
        </div>

        <table class="announcement-table table table-hover">
          <thead style="background-color: #e9ecef; border-top:3px solid">
            <th scope="col">선정조력자 번호</th>
            <th scope="col">아이디</th>
            <th scope="col">조력자 이름</th>
            <th scope="col">조력자 분류</th>
            <th scope="col">승인일</th>
            <th scope="col">삭제유무</th>
          </thead>

          <tbody>
            <tr style="border-top : 3px solid #e9ecef">
              <td>1</td>
              <td>
              	<a href="<c:url value='/slctn/slctnDetail'/>">abcd</a>
              </td>
              <td>김호동</td>
              <td>통번역인</td>
              <!-- Javascript를 사용해서 날짜 입력받거나  -->
              <td>2022/07/29</td>
              <td><button class="btn del-btn" type="button" id="inputGroupFileAddon04">삭제</button></td>
            </tr>
            <tr>
              <td>2</td>
              <td>
              	<a href="<c:url value='/slctn/slctnDetail'/>">abcd</a>
              </td>
              <td>박호동</td>
              <td>통번역인</td>
              <!-- Javascript를 사용해서 날짜 입력받거나  -->
              <td>2022/07/29</td>
              <td><button class="btn del-btn" type="button" id="inputGroupFileAddon04">삭제</button></td>
            </tr>
            <tr>
              <td>3</td>
              <td>
              	<a href="<c:url value='/slctn/slctnDetail'/>">abcd</a>
              </td>
              <td>이호동</td>
              <td>통번역인</td>
              <!-- Javascript를 사용해서 날짜 입력받거나  -->
              <td>2022/07/29</td>
              <td><button class="btn del-btn" type="button" id="inputGroupFileAddon04">삭제</button></td>
            </tr>
          </tbody>
        </table>

        <div class="andBtns">
          <div class="paging-btns">
            <button type="button" class="btn btn-outline-secondary">◀</button>
            <button type="button" class="btn btn-outline-secondary">1</button>
            <button type="button" class="btn btn-outline-secondary">2</button>
            <button type="button" class="btn btn-outline-secondary">3</button>
            <button type="button" class="btn btn-outline-secondary">4</button>
            <button type="button" class="btn btn-outline-secondary">▶</button>
          </div>

      </div>    
    </section>
  </form>
  
  </div>
	
	<%@ include file="../include/footer1.jsp"%>

</body>
</html>