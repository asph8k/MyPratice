<%@page import="java.util.Collections"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%--
       - ArrayList를 생성해서 1 ~ 45범위의 난수 6개를 리스트에 저장하세요.
            중복은 발생하면 안됩니다. 중복 방지 로직을 세워서 리스트에 난수를 삽입한 후
       body태그에 리스트 내부의 값을 출력해 주세요.
            난수 생성은 Random객체든, Math.random()이든 상관 없습니다.
       java.util -> Random이라는 클래스가 있습니다. import 하세요.
       nextInt(45) + 1 -> 1 ~ 45 범위의 난수를 리턴.
   --%>

	<%
		List<Integer> lotto = new ArrayList<>();
		Random r = new Random();
		
		while(lotto.size() < 6) {
			int rn = r.nextInt(45) + 1;
			if(!lotto.contains(rn)) { // 논리 반전연산자
				lotto.add(rn);
			}
		}
		
		Collections.sort(lotto);
	%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>로또 번호 생성 결과!</h1>
	
	<p>
		이번 주 로또 번호는 이 번호다! <br>
		<% for(int i : lotto) { %>
			<%= i %> &nbsp;
		<% } %>
	</p>

</body>
</html>