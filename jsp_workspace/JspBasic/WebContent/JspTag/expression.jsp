<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	String name = "홍길동";
	String address = "서울특별시";
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		out.print("이름 : " + name + "<br>");
		out.print("이름 : " + address + "<br>");
	%>
	
	<hr>
	
	<!-- expression 태그 -->
	<!-- 변수를 1,2개 정도 브라우저에 출력할때 쓰면 좋다 -->
	이름 : <%= name %> <br> <!-- out.print(name)와 똑같다 -->
	주소 : <%= address %> <br>
	난수값 : <%= Math.random() %> <br>
	
	<hr>
	
	<h2>구구단 7단</h2>
	<% for(int hang = 1; hang <= 9; hang++) { %>
		7 x <%= hang %> = <%= 7 * hang %> <br>
	<% } %>

</body>
</html>