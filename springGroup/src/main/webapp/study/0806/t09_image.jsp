<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <title>t09_image.jsp</title>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>정적 리소스(그림, css, js)</h2>
  <p>JSP소스코드와는 별도로 webapp폴더 아래 독립적으로 폴더를 만들어서 관리한다.</p>
  <hr/>
  <div>
  	<p>1.<img src="logos.jpg" width="200" />(X)</p>
  	<p>2.<img src="../../images/js/logos.jpg" width="200" />(O)</p>
  	<p>3.<img src="/images/logos.jpg" width="200" />(X)</p>
  	<p>4.<img src="/springGroup/images/js/logos.jpg" width="200" />(O)</p>
  	<p>5.<img src="/<%=request.getContextPath() %>/images/logos.jpg" width="200" />(X)</p>
  	<p>6.<img src="<%=request.getContextPath() %>/images/js/logos.jpg" width="200" />(O)</p>
  	<hr/>
  	<p>
  		<%
  			for(int i = 0; i <= 6; i++) {
  				out.println("<div><img src='"+ request.getContextPath()+"/images/"+i+".jpg' width='100px' /></div>");
  			}
  		%>
  	</p>
  </div>
</div>
<p><br/></p>
</body>
</html>