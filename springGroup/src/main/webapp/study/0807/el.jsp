<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <title>el.jsp</title>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>EL(Expression Language)</h2>
  <p>저장소(서버 : SercerContext 컨테이너에 저장(기록)되어 있는 자료에 대한 처리를 담당)</p>
  <hr/>
  <pre>
  	사용법 : ${변수/값/객체/수식}
  	용도 : 사용자(클라이언트)기 '번수/값/객체/수식'등을 서버로부터 전송 받은 후에 해당 자료를 '(변수)저장', 계산, 선언등의 처리용도로 사용.
  	서버저장소 : Application / Session / PageContext / Request
  </pre>
  <hr/>
  <%
  	String name = "홍길동";
  	String add = "서울";
  	int su1 = 100, su2 = 200;
  	String su3 = "100", su4 = "400";
  	
  	out.println("<h4>스크립틀릿을 이용한 출력</h4>");
  	out.println("name : " + name);
  	out.println("<br/>add : " + add);
  	out.println("<br/>su1 : " + su1);
  	out.println("<br/>su1 + su2 : " + (su1 + su2));
  	out.println("<br/>su1 * su2 : " + (su1 * su2));
  	out.println("<br/>su3 + su4 : " + (su3 + su4));
  %>
  <hr/>
  <h4>표현식을 이용한 출력</h4>
  name : <%=name %><br/>
  add : <%=add %><br/>
  su1 : <%=su1 %><br/>
  su1 + su2 : <%=(su1 + su2) %><br/>
  su1 * su2 : <%=(su1 * su2) %><br/>
  su3 + su4 : <%=(su3 + su4) %><br/>
  <hr/>
  <h4>EL표기법을 이용한 출력</h4>
  <%
  	pageContext.setAttribute("name", name);
  	pageContext.setAttribute("add", add);
  	pageContext.setAttribute("su1", su1);
  	pageContext.setAttribute("su2", su2);
  	pageContext.setAttribute("res1", (su1 + su2));
  	pageContext.setAttribute("res2", (su1 * su2));
  	pageContext.setAttribute("res3", (su3 + su4));
  %>
  name : ${name}<br/>
  add : ${add}<br/>
  su1 : ${su1}<br/>
  res1 : ${res1}<br/>
  res2 : ${res2}<br/>
  res3 : ${res3}<br/>
  su1 + su2 : ${(su1 + su2)}<br/>
  su1 * su2 : ${(su1 * su2)}<br/>
  ${su1} + ${su2} : ${su1} + ${su2}<br/>
  <hr/>
  <h4>파라메터값 처리</h4>
  <p>폼태그 또는 get방식을 통해서 넘어온 값에 대한 처리를 할수 있다.(주소?변수1=값1&변수2=값2)</p>
  <div>주소창의 마지막 파일명 또는 경로명 뒤에 '?mbc=20&kbs=50'을 입력 후 확인하시오.</div>
  mbc = ${param.mbc}<br/>
  kbs = ${param.kbs}<br/>
  mbc + kbs = ${param.mbc + param.kbs}<br/>
  mbc - kbs = ${param.mbc - param.kbs}<br/>
</div>
<p><br/></p>
</body>
</html>