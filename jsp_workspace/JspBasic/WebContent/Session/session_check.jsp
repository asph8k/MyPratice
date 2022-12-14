<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	/*
    	- 세션에 저장한 데이터는 브라우저 창이 종료될 때 까지 혹은
    	세션의 유효기간이 만료되기 전까지 웹 어플리케이션의
    	모든 jsp파일에서 사용이 가능합니다.
    	
    	- 세션에 저장된 데이터를 가져오려면 session객체의 메소드
    	getAttribute()를 사용하며, 매개값으로 가져올 세션 데이터의 이름을 적습니다.
    	*/
    	
    	//모든 클래스는 object의 자식이다
        //session은 여러가지 객체를 가질수 있지만 cookie는 오로지 문자열만 가질수 있다.
    	
    	// -getAttribute의 리턴타입은 Object이기 때문에
    	// 강제 형 변환을 통해 타입을 내려서 준비한 변수에 대입해야 합니다.
    	String nick = (String)session.getAttribute("nickname"); //string타입으로 끌어내림
    	String[] hobbies = (String[])session.getAttribute("hobbies");
    	
    	out.print(nick + "<br>");
    	out.print(Arrays.toString(hobbies) + "<br>");
    	out.print("-------------------------------<br>");
    	
    	//세션의 유효기간 설정.
    	//세션의 수명을 따로 지정하지 않으면 기본 30분의 유효시간을 갖습니다.
    	session.setMaxInactiveInterval(60 * 60); //초 단위 세션의 유효시간 설정.
    	
    	int sTime = session.getMaxInactiveInterval();//유효시간을 알아볼수 있다.
    	out.print("세션의 유효시간: " + sTime + "초<br>");
    	out.print("-------------------------------<br>");
    	
    	//특정 세션의 데이터를 삭제하는 법
    	session.removeAttribute("nickname");
    	nick = (String) session.getAttribute("nickname");
    	out.print("삭제 후 nick의 값: " + nick + "<br>");
    	out.print("-------------------------------<br>");
    	
    	//모든 세션 데이터를 삭제하는 법. (무효화)
    	session.invalidate();
    	
    	//해당 페이지에서는 더 이상 세션 객체를 사용할 수가 없으므로
    	//아래의 코드는 에러가 발생.
    	//새롭게 요청이 다시 들어오기 전 까지는 세션 객체를 사용할 수 없다.
    	
    	hobbies = (String[]) session.getAttribute("hobbies");
    	out.print("삭제 후 hobbis의 값: " + Arrays.toString(hobbies));
    	
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>