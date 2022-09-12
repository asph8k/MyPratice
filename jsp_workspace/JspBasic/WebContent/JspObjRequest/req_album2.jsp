<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		<table border="2px" align= "center">
			<thead>
				<tr>
					<th name= "profile">프로필</th>
					<th name= "job" width= "300px">직업</th>
					<th name= "clip" width= "300px">클립 영상</th>
					<th name= "debut" width= "300px">데뷔일</th>
				</tr>
			</thead>
				<tr>
				    <td><img src= "01.jpg" height= "200px" width= "300px"></td>
				    <td align= "center">유재석</td>
				    <td align= "center">
				   		<a href="req_album_result.jsp?info=profile1"> 런닝맨601회 클립 영상 </a>
				    </td>
				    <td align= "center">1991년 5월 5일</td>
				</tr>
				<tr>
					<td><img src="02.jpg" height= "200px" width= "300px"></td>
					<td align= "center">구교환</td>
					<td align= "center">
					<a href="req_album_result.jsp?info=profile2"> D.P 클립 </a>
					</td>
					<td align= "center">2008년</td>
				</tr>
		</table>


</body>
</html>