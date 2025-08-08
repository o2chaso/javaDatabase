<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String[] cards = {"신한", "국민", "BC", "LG", "현대", "삼성"};
	pageContext.setAttribute("cards", cards);
	
	String[][] members = {
 		{"홍길동", "25", "서울"},
 		{"김말숙", "33", "청주"},  			
 		{"이기자", "19", "제주"},  			
 		{"강감찬", "55", "광주"},  			
 		{"김연아", "19", "서울"}  			
  	};
  	pageContext.setAttribute("members", members);
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <jsp:include page="/includ/bs5.jsp"></jsp:include>
  <title>ex02_list.jsp</title>
</head>
<body>
<p><br/></p>
<div class="container">
  
</div>
<p><br/></p>
</body>
</html>