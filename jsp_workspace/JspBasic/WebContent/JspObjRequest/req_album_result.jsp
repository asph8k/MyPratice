<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String profile = request.getParameter("profile");
    	String job = request.getParameter("job");
    	String clip = request.getParameter("clip");
    	String debut = request.getParameter("debut");
    	String info = request.getParameter("info");
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<% if(info.equals("profile1")) { %>
	
		<h1 align= "center">선택하신 클립 정보</h1>
		<hr>
	
		<p align= "center">
			당신이 선택하신 클립은 <strong>런닝맨601회 클립 영상</strong> 입니다.
		</p>
		<hr>
	
		<h2 align= "center">클립 영상</h2>
	
		<iframe width="800" height="600" src="https://www.youtube.com/watch?v=RTZcCs2NNmA?autoplay=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

	
	<% } else if(info.equals("profile2")) { %>

		<h1 align= "center">선택하신 클립 정보</h1>
		<hr>
	
		<p align= "center">
			당신이 선택하신 클립은 <strong>D.P 클립</strong> 입니다.
		</p>
		<hr>
	
		<h2 align= "center">클립 영상</h2>
	
		<iframe width="800" height="600" src="https://www.youtube.com/watch?v=ud_u7iTuuD4?autoplay=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>	
	<% } %>

</body>
</html>