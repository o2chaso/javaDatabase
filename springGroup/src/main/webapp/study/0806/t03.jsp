<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <title>t03.jsp</title>
</head>
<script>
	function fCheck() {
		// 성명 나이 체크
		const name = $('#name');
    	const age  = $('#age');
		 
    	const nameOk = /^[가-힣]{2,30}$/;
    	
    	if (name == '' || !nameOk.test(name)) {
    		alert('성명은 한글 2~30자로 입력하세요.');
    	    $name.focus();
    	    return false;
    	}
		 
    	return true;	
	}
</script>
<body>
<p><br/></p>
<div class="container">
  <h2>회원가입</h2>
  <form name="myform" method="post" action="<%=request.getContextPath() %>/j0806/T03">
  <div class="mb-3"> 성명
  	<input type="text" name="name" id="name" value="홍길동" class="form-control" autofocus required />
  </div>
  <div class="mb-3"> 나이
  	<input type="number" name="age" id="age" value="20" class="form-control" required />
  </div>
  <div class="mb-3">
  	<input type="button" value="전송" onclick="fCheck()" class="btn btn-success form-control" />
  </div>
  </form>
</div>
<p><br/></p>
</body>
</html>