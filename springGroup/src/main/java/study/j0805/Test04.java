package study.j0805;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/test04Ok")
public class Test04 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		
		response.getWriter().append("name : " + name + "<br/>")
												.append("age : " + age + "<br/>")
												.append("<a href='0805/test04.jsp'>back</a><br/>");
		response.getWriter().append("안녕하세요!! <br/>");
		
	}
}
