<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--
	콤보상자와 리스트박스에 그림을 추가시켜준 후, 그림을 선택하면 하단에 선택된 그림을 표시하시오.
	단, 리스트박스의 그림은 여러장을 선택하여 출력시켜줄 수 있도록 처리한다.
--%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <title>ex01_image.jsp</title>
  <style>
  	
  </style>
</head>
<body>
<p><br/></p>
<div class="container">
	<h3>콤보박스 이미지선택</h3>
	<form method="post">
	  	<select name="combo" id="combo" class="form-select">
	  		<option value="">-- 선택하세요 --</option>
	  		<option value="../../images/js/1.png">이미지1</option>
	  		<option value="/springGroup/images/js/2.jpg">이미지2</option>
	  		<option value="<%=request.getContextPath() %>/images/js/3.png">이미지3</option>
	  	</select>
	  	<hr/>
	  	
		<h3>리스트박스 이미지선택</h3>
	  	<select name="list" id="list" class="form-select" multiple size="3">
	  		<option value="../../images/js/4.jpg">이미지1</option>
	  		<option value="../../images/js/5.jpg">이미지2</option>
	  		<option value="../../images/js/1.png">이미지3</option>
	  	</select>
	  	<input type="submit" value="이미지 출력" class="btn btn-success mt-5"/>
	</form>
  	<hr/>
  	
  	<%-- 콤보박스 이미지 출력 --%>
  	<%
  		String comboImg = request.getParameter("combo");
  		if(comboImg != null && !comboImg.equals("")) {
	  	%>
		    <p>선택한 콤보 이미지:</p>
		    <img src="<%=comboImg %>" width="150px">
		<%
	    }
	%>
	
	<%-- 리스트박스 다중 이미지 출력 --%>
	<%
		String[] listimg = request.getParameterValues("list");
		if(listimg != null && listimg.length > 0) {
		%>
			<p>선택한 리스트 이미지:</p>
		<%
			for(String img2 : listimg) {
				
		%>
			<img src="<%=img2 %>" width="150px">
		<%
			}
		%>
		<%
		}
	%>
</div>
<p><br/></p>
</body>
</html>