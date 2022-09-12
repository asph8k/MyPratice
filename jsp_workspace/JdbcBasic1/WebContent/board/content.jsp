<%@page import="kr.co.jsp.board.model.BoardVO"%>
<%@page import="kr.co.jsp.board.model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	//BoardDAO에서 selectOne()과 delete() 메소드 작성하기
    	//요청과 함께 넘어오는 파라미터 값(글 번호)을 얻어와서
    	//DAO의 selectOne() 호출하여 객체를 받아오세요.
    	
    	int bId = Integer.parseInt(request.getParameter("bId"));
    	BoardVO vo = BoardDAO.getInstance().selectOne(bId);
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	
	<h1><%= vo.getBoardId() %>번 게시물 내용</h1>
	<p>
		# 작성자: <%= vo.getWriter() %> <br>
		# 제목: <%= vo.getTitle() %> <br>
		# 내용: <br>
		<textarea rows="5" readonly><%= vo.getContent() %></textarea> <br>
		# 작성일: <%= vo.getRegdate() %>
	</p>
	
	<a href="list.jsp">글 목록보기</a>
	<a href="modify.jsp?bId=<%= vo.getBoardId() %>">글 수정하기</a>

</body>
</html>