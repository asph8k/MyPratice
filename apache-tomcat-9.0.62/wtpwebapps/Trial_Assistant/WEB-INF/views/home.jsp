<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>     
	
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>BBS Test</title>


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
	
	
</head>

<style>

/* 제목을 클릭했을 때 a링크 스타일 없앰  */
.link-a-style{
	text-decoration:none;
	color:black;
}    

</style>

<body>

	<jsp:include page="include/headerCommon.jsp" /> 


	<!-- Start Banner Hero -->
	<div id="template-mo-zay-hero-carousel" class="carousel slide"
		data-bs-ride="carousel">
		<ol class="carousel-indicators">
			<li data-bs-target="#template-mo-zay-hero-carousel"
				data-bs-slide-to="0" class="active"></li>
			<li data-bs-target="#template-mo-zay-hero-carousel"
				data-bs-slide-to="1"></li>
			<li data-bs-target="#template-mo-zay-hero-carousel"
				data-bs-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<div class="container">
					<div class="row p-5">
						<div class="mx-auto col-md-8 col-lg-6 order-lg-last">
							<img class="img-fluid" src="${pageContext.request.contextPath }/resources/images/law1.jpg" alt="법원이미지1">
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<div class="container">
					<div class="row p-5">
						<div class="mx-auto col-md-8 col-lg-6 order-lg-last">
							<img class="img-fluid" src="${pageContext.request.contextPath }/resources/images/law2.jpg" alt="법원이미지2">
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<div class="container">
					<div class="row p-5">
						<div class="mx-auto col-md-8 col-lg-6 order-lg-last">
							<img class="img-fluid" src="${pageContext.request.contextPath }/resources/images/law3.jpg" alt="법원이미지3">
						</div>
					</div>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev text-decoration-none w-auto ps-3"
			href="#template-mo-zay-hero-carousel" role="button"
			data-bs-slide="prev"> <i class="fas fa-chevron-left"></i>
		</a> <a class="carousel-control-next text-decoration-none w-auto pe-3"
			href="#template-mo-zay-hero-carousel" role="button"
			data-bs-slide="next"> <i class="fas fa-chevron-right"></i>
		</a>
	</div>
	<!-- End Banner Hero -->



	<!-- Start Categories of The Month -->
	<section class="py-5 px-3">

		<div class="row pt-3">

			<div class="table-box col-lg-6">
				<div class="more-view title-box">
					<h4>공지사항</h4>
				</div>
        <table class="announcement-table table table-hover">
          <thead style="background-color: #e9ecef; border-top:3px solid ">
	          <tr>
	            <th scope="col">번호</th>
	            <th scope="col">제목</th>
	            <th scope="col">작성자</th>
	            <th scope="col">작성일</th>
	            <th scope="col">조회수</th>
	          </tr>
          </thead>

          <tbody style="border-top : 3px solid #e9ecef">
          
          	<c:forEach var="notice" items="${noticeList }">
          		<tr>
	              <td>${notice.noticeNum}</td>
	              <td>
	              	<a href="<c:url value='/notice/content/${notice.noticeNum }' />" class="link-a-style">${notice.noticeTitle }</a>
	              </td>
	              <td>${notice.noticeWriter }</td>
	              <td><fmt:formatDate value="${notice.noticeDate}" pattern="yyyy-MM-dd"/></td>
	              <!-- Javascript를 사용해서 날짜 입력받거나  -->
	              <td id="notice_hit">${notice.noticeHits }</td>
	            </tr>
          	</c:forEach>
            
            
          </tbody>
        </table>



			</div>
			<div class="table-box col-lg-6">
				<div class="more-view title-box">
					<h4>공고</h4>
				</div>

        <table class="announcement-table table table-hover">
          <thead style="background-color: #e9ecef; border-top:3px solid ">
	          <tr>
	            <th scope="col">번호</th>
	            <th scope="col">제목</th>
	            <th scope="col">작성자</th>
	            <th scope="col">시작일</th>
	            <th scope="col">마감일</th>
	          </tr>
          </thead>

          <tbody style="border-top : 3px solid #e9ecef">
          
          	<c:forEach var="ann" items="${annList }">
          		<tr>
	              <td>${ann.anmNum}</td>
	              <td>
	              	<a href="<c:url value='/announcement/announcementDetail/${ann.anmNum }' />" class="link-a-style">${ann.anmTitle }</a>
	              </td>
	              <td>${notice.noticeWriter }</td>
	              <td><fmt:formatDate value="${ann.anmStart}" pattern="yyyy-MM-dd"/></td>
				  <td><fmt:formatDate value="${ann.anmEnd}" pattern="yyyy-MM-dd"/></td>          
	              <!-- Javascript를 사용해서 날짜 입력받거나  -->
	            </tr>
          	</c:forEach>
            
            
          </tbody>
        </table>


			</div>
		</div>

	</section>
	<!-- End Categories of The Month -->

	<%@ include file="include/footerCommon.jsp"%>




</body>



</html>
