<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>조력자 신청</title>

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
	
</head>

<style>

	.btn-success {
		margin-top: 15px;
	}
        
	.content-row{
		display: flex;
		justify-content: center;
	}

	.board-table{
		width: 100%;
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
    
    
<body>

	<jsp:include page="../include/headerCommon.jsp" />

    <!-- 조력자 공고 신청 배너 -->
    <form class="form-total">
        <div class="container py-5">
            <div class="row">
                <div class="container-fluid py-3">
                    <section class="container py-5">
                        <div>
                            <h1 id="apply-benner">조력자 신청하기</h1><hr width="1250">
                        </div>
                    </section>
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

          <tbody>
	          <c:forEach var="vo" items="${anmList}">
	            <tr class="anm-list-tr" style="border-top : 3px solid #e9ecef">
	              <td>${vo.anmNum}</td>
	              <td>${vo.anmYear}</td>
	              <td>${vo.anmDegree}</td>
	              <td><a href="<c:url value='/announcement/announcementDetail/${vo.anmNum}${pc.makeURI(pc.paging.pageNum)}' />">${vo.anmTitle}</a></td>
	              <td>${vo.anmStart} ~ ${vo.anmEnd}</td>
	              <td>${vo.anmDivision}</td>
	            </tr>
	          </c:forEach>
          </tbody>
          
        </table>
        
		<form action="<c:url value='/apply/applyList'/>" name="pageForm">
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
          </div>

          <!-- 페이지 관련 버튼(이전, 다음, 페이지번호)을 클릭 시 같이 숨겨서 보내줄 공통 값  -->
          <input type="hidden" name="page" value="${pc.paging.pageNum}">
          <input type="hidden" name="cpp" value="${pc.paging.cpp}">

        </form>
 
        
        <!-- Start Brands -->
        <section class="py-5">
            <div class="container my-4">
                <div class="row text-center py-3"></div>
            </div>
        </section>
        <!--End Brands-->

        <%@ include file="../include/footerCommon.jsp"%>

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
 }
     
</script>


</html>