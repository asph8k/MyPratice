<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 파일 업로드에서는 enctype(인코딩타입)을 "multipart/form-data"로 반드시 지정. -->
	<form action="upload_ok" method="post" enctype="multipart/form-data">
		파일 선택: <input type="file" name="file"><br>
		<input type="submit" value="전송">
	</form>

	<hr>
	
	<!-- multiple="multiple" 여러개 파일을 전송하는 방법 -->
	<form action="upload_ok2" method="post" enctype="multipart/form-data">
		파일 선택: <input type="file" multiple="multiple" name="files"><br>
		<input type="submit" value="전송">
	</form>
	
	<hr>
	
	<form action="upload_ok3" method="post" enctype="multipart/form-data">
		파일 선택: <input type="file" name="file"><br>
		파일 선택: <input type="file" name="file"><br>
		파일 선택: <input type="file" name="file"><br>
		<input type="submit" value="전송">
	</form>
	
	<hr>
	
	<form action="upload_ok4" method="post" enctype="multipart/form-data">
		원하시는 파일명: <input type="text" name="list[0].name">
		파일 선택: <input type="file" name="list[0].file"><br>
		
		원하시는 파일명: <input type="text" name="list[1].name">
		파일 선택: <input type="file" name="list[1].file"><br>
		
		원하시는 파일명: <input type="text" name="list[2].name">
		파일 선택: <input type="file" name="list[2].file"><br>
		<input type="submit" value="전송">
	</form> 

</body>
</html>