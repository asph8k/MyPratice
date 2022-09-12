<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    	request.setCharacterEncoding("utf-8");
    
    	String id = request.getParameter("id"); //cookie_login.jsp에서 입력 요청을 받은 id와 pw를 받아온다.
    	String pw = request.getParameter("pw");
    	
    	//사용자가 입력한 아이디와 비밀번호가 맞는지 체크하고 쿠키를 생성하여 응답과 같이 사용자에게 보낸다.
    	if(id.equals("abc1234") && pw.equals("aaa1111")) { //입력받은 id와 pw가 abc1234, aaa1111과 같다면
    		Cookie loginCoo = new Cookie("login_cookie", id); //cookie타입의 loginCoo변수 선언을 하고 cookie를 생성하여 쿠키의 이름을 login_cookie라 하고 저장할 데이터를 id로 한다.
    		loginCoo.setMaxAge(5); //loginCoo쿠키에 유효기간은 5초로 설정
    		response.addCookie(loginCoo); //다시 cookie_login.jsp로 응답을 보낼때 만들어놓은 쿠키를 얹혀 함께 보낸다.
    		
    		//사용자가 아이디 기억하기 체크박스를 체크한 경우.
    		if(request.getParameter("id_remember") != null) { //요청받은 입력이 id_remember가 null이 아니라면 또는 맞다면
    			Cookie idMemory = new Cookie("remember_id", id); //새로운 쿠키 생성. 쿠키명을 remember_id라 하고 저장할 데이터는 id
    			idMemory.setMaxAge(30); //유효기간은 30초
    			response.addCookie(idMemory);
    		}
    		
    		response.sendRedirect("cookie_welcome.jsp"); //사용자가 아이디와 비밀번호를 맞게 누르고 아이디 기억하기를 체크한 경우 cookie_welcome.jsp 파일로 응답을 보낸다.
    		
    	} else { //사용자가 아이디와 비밀번호를 틀렸을 경우
    		response.sendRedirect("cookie_login.jsp");
    	}
    %>
    