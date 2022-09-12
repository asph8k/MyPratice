<%@page import="kr.co.jsp.board.model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	int bId = Integer.parseInt(request.getParameter("bId"));
    
    	if(BoardDAO.getInstance().delete(bId)) {
    %>
    	<script>
    		alert("게시물을 삭제완료 했습니다.");
    		location.href="list.jsp";
    	</script>
    <% } else { %>
    	<script>
    		alert("삭제 실패.");
    		location.href="list.jsp";
    	</script>
   	<% } %>