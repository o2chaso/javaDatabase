package study.j0806;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/j0806/T11")
public class T11 extends HttpServlet{
	
	// null / "" 묶음 처리 함수
	private String checkNull(String val) {
		return (val == null || val.trim().equals("")) ? "입력안됨" : val.trim();
	}
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		String name = checkNull(request.getParameter("name"));
		String ageStr = checkNull(request.getParameter("age"));
		int age = ageStr.equals("입력안됨") ? 0 : Integer.parseInt(ageStr);
		String gender = checkNull(request.getParameter("gender"));
		String job = checkNull(request.getParameter("job"));
	
		String[] hobbys = request.getParameterValues("hobby");	
		String[] mountains = request.getParameterValues("mountain");
		String content = checkNull(request.getParameter("content"));
		String fileName = request.getParameter("fileName");
		
		System.out.println("성명 : " + name);
		System.out.println("나이 : " + age);
		System.out.println("성별 : " + gender);
		
		String hobby = "";
		if(hobbys == null || hobbys.length == 0) {
			out.println("<script>alert('취미는 1개 이상 선택해 주세요');history.back();</script>");
			return;
		};
		
		if(hobbys != null) {
			for(String h : hobbys) {
				hobby += h + "/";
			}
			hobby = hobby.substring(0, hobby.length()-1);
		}
		
		System.out.println("취미 : " + hobby);
		System.out.println("직업 : " + job);
		
		String mountain = (mountains == null || mountains.length == 0) ? "가본 적 없음" : String.join(", ", mountains);
		System.out.println("가본산 : " + mountain);
		
		System.out.println("자기소개 : " + content);
		System.out.println("파일명 : " + fileName);
		content = content.replace("\n", "<br/>");
		
//		request 저장소
		request.setAttribute("name", name);
		request.setAttribute("age", age);
		request.setAttribute("gender", gender);
		request.setAttribute("hobby", hobby);
		request.setAttribute("job", job);
		request.setAttribute("mountain", mountain);
		request.setAttribute("content", content);
		request.setAttribute("fileName", fileName);
		
//		session 방식
//		HttpSession session = request.getSession();
//		session.setAttribute("name", name);
//		session.setAttribute("age", age);
//		session.setAttribute("gender", gender);
//		session.setAttribute("hobby", hobby);
//		session.setAttribute("job", job);
//		session.setAttribute("mountain", mountain);
//		session.setAttribute("content", content);
//		session.setAttribute("fileName", fileName);
		
//		request.setAttribute("message", "");
//		request.setAttribute("url", request.getContextPath() + "/study/0806/t11Ok.jsp?name="+name+"&age="+age+"&gender" + gender);
//		request.setAttribute("url", request.getContextPath() + "/study/0806/t11Ok.jsp");
		
		String viewPage = "/study/0806/t11Ok.jsp";
//		String viewPage = "/inculd/message.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	
	}
}
