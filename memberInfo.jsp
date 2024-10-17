<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%--
		1. 선언문으로 넘어올 변수 선언
		2. 스크립트릿으로 해당 데이터 받아 변수에 저장
		3. 표현식으로 회원정보를 웹브라우저에 출력하기
	 --%>
	
	<%!
		String id, pw, name, age;
		String[] hobby;
	%>
	
	<%
		request.setCharacterEncoding("UTF-8");
	
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		name = request.getParameter("name");
		age = request.getParameter("age");
		
		hobby = request.getParameterValues("hobby");
		
	%>
	
	<h2>회원정보 보기</h2>
	
	아이디 : <%=id %><br>
	비밀번호 : <%=pw %><br>
	이름 : <%=name %><br>
	나이 : <%=age %><br>
	취미 : <%=Arrays.toString(hobby) %><br>
	
	
	
		
</body>
</html>






