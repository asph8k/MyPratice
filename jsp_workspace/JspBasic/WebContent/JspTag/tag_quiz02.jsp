<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%!
       List<String> party = new ArrayList<>();
       //사진 파일명이 인덱스 번호로 되어 있기 때문에
       //따로 인덱스 번호만 모아놓은 리스트를 하나 더 생성하겠습니다.
       List<Integer> jobNumber = new ArrayList<>();
    %>
    
    <%
       String[] jobs = {"전사", "도적", "사냥꾼", "마법사", "사제"};
    	
    	
    /*
   - 직업 개수만큼의 정수 난수를 발생시켜 주세요. (0 ~ 4)
   - 발생된 난수의 번호대로 party라는 리스트를 선언하셔서 직업을 추가해 주세요.
    직업은 계속 누적되어야 합니다. (10명까지)
    
   - party라는 list에 현재 선택된 직업이 몇 개 존재하는지 확인하는 작업이
    필요합니다.
    
   - 반복문으로 list를 순회하여, 현재 선택된 직업의 문자열과, party라는 리스트에
   들어있는 문자열 중에 같은 문자열이 발견될 때마다 숫자를 세서
   브라우저에 표현해 주시면 되겠습니다.
   */
    
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%--
      <img>태그를 사용하여 각 직업에 맞는 사진을 띄워 주세요.
       당신의 역할: 가로 40px, 세로 40px
       
      파티원을 표시하는 사진 -> 가로 세로 20px
      
      현재 파티 구성에는 party라는 list를 반복문으로 순회하여 
      해당 직업의 인덱스 번호를 모아놓은 리스트를 따로 구성해 주세요.
      그 직업번호 리스트에 맞춰서 사진을 img태그로 반복해서 넣어주시면 됩니다.
      
      그리고, 파티원이 10명이 되었을 경우 리스트를 비워 주시면 되겠습니다.
    --%>

</body>
</html>