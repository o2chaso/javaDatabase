<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <title>t12Ok.jsp</title>
</head>
<body>
<p><br/></p>
<div class="container mt-5">
	<div class="a">
    	<div class="b bg-primary text-white">
			<h2 class="mb-1">전송된 값</h2>
		</div>
		<div class="c">
		<%-- <div>성명: <%=request.getAttribute("name") %></div>
		<div>나이: <%=request.getAttribute("age") %> </div> --%>
			<table class="table table-bordered align-middle w-100" style="table-layout: auto;">
				<tr><th class="text-start">성명</th><td>${vo.name}</td></tr>			
				<tr><th class="text-start">나이</th><td>${vo.age}</td></tr>			
				<tr><th class="text-start">성별</th><td>${vo.gender}</td></tr>			
				<tr><th class="text-start">취미</th><td>${vo.hobby}</td></tr>			
				<tr><th class="text-start">직업</th><td>${vo.job}</td></tr>			
				<tr><th class="text-start">가본산</th><td>${vo.mountain}</td></tr>			
				<tr><th class="text-start">자기소개</th><td>${vo.content}</td></tr>			
				<tr><th class="text-start">첨부파일</th><td>${vo.fileName}</td></tr>			
			</table>
  			<div><input type="button" value="돌아가기" onclick="location.href='${pageContext.request.contextPath}/study/0806/t12_mvc.jsp'" class="btn btn-primary" /></div>	
		</div>
	</div>
</div>
<p><br/></p>
</body>
</html>
	