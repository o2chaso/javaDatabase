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
@WebServlet("/j0806/T12")
public class T12 extends HttpServlet{
	
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

//		request.setAttribute("name", name);
//		request.setAttribute("age", age);
//		request.setAttribute("gender", gender);
//		request.setAttribute("hobby", hobby);
//		request.setAttribute("job", job);
//		request.setAttribute("mountain", mountain);
//		request.setAttribute("content", content);
//		request.setAttribute("fileName", fileName);
		
		
		//	 BackEnd 체크 완료 후 정상적인 자료를 DB에 저장시켜준다.(저장완료 메세지(message.jsp)를 호출 후 최종 View 페이지(url)로 이동처리한다.
		
		//	View페이지에서 앞의 자료를 보여주기 위해 vo객체에 모두 담아서 request 저장소에 실어 넘겨준다
		T12VO vo = new T12VO();
		vo.setName(name);
		vo.setAge(age);
		vo.setGender(gender);
		vo.setHobby(hobby);
		vo.setJob(job);
		vo.setMountain(mountain);
		vo.setFileName(fileName);
		
		request.setAttribute("vo", vo);
		
		String viewPage = "/study/0806/t12Ok.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	
	}
}
