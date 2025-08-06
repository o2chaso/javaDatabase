<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <title>test04.jsp</title>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>URL을 통한 값의 전송(Get방식)</h2>
  <hr/>
	<div>
		<a href="test04Ok.jsp?name=o2chaso&age=25" class="btn btn-success">전송(JSP 호출)</a>
		<a href="<%=request.getContextPath() %>/test04Ok?name=o2chaso&age=25" class="btn btn-primary">전송(Servlet 호출)</a>
	</div>
</div>
<p><br/></p>
</body>
</html>