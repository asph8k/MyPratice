<%@page import="user.User"%>
<%@page import="user.UserRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    /*
    1. 입력된 회원 정보를 가져오세요.
    
    2. 로그인을 시도하는 회원의 모든 정보를 얻어오세요. (getUser())
    getUser() -> 아이디를 전달받아 해당 아이디와 일치하는 객체가 있는지
    확인 후, 있다면 그 객체를 리턴.
    일치하는 객체가 없다면 null을 리턴.
    
    3. 조건문을 사용하여 getUser()의 리턴값이 null인지 아닌지를 확인하여
     null값을 받았다면 회원가입이 되어있지 않은 사람이 로그인을 시도한 것이므로
      로그인 페이지로 보내주세요. (script로 경고창 띄운 후 로그인 페이지로. (location.href=""))
      
    4. getUser()의 리턴값이 null이 아닌 경우
    회원 가입 당시에 작성했던 비밀번호가 로그인할 때 작성한 비밀번호와
    일치하는지를 확인하여 같다면 세션에 로그인 데이터를 저장해 주세요.
    ("login", User객체)
    
    5. 세션을 만든 후 "login_welcome.jsp"로 페이지를 이동시켜 주세요.
    
    6. 비밀번호가 일치하지 않는다면 script태그로 "비밀번호가 일치하지 않습니다."
     경고창 하나 띄워 주시고 다시 로그인 페이지로 이동시켜 주세요.
    */
    request.setCharacterEncoding("utf-8");
    String id = request.getParameter("account");
    String pw = request.getParameter("password");
    
    User user = UserRepository.getUser(id);
    
    if(user.getAccount() != null) {
    	if(user.getPassword().equals(pw)) {
    		session.setAttribute("login", user);
    		response.sendRedirect("login_welcome.jsp");
    	} 
    	else { 
    		
    	} %>
    		<script>
    			alert("비밀번호가 일치하지 않습니다.");
    			history.back();
    		</script>
    <% 	}
     else {
    	
     %>
     <script>
     	alert("로그인 페이지로.")
     	location.href="login_form.jsp";
     </script>
     
     <% } %>
     