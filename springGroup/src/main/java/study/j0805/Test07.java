package study.j0805;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/j0805/Test07")
public class Test07 extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		int flag = Integer.parseInt(request.getParameter("flag"));
		
	  backProcess(response, flag);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF8");
		int flag = Integer.parseInt(request.getParameter("flag"));
		
		backProcess(response, flag);
	}
	
	private void backProcess(HttpServletResponse response, int flag) throws IOException {
		response.getWriter().append("<input type='button' value='돌아가기' onclick='history.back()' />");
	}
}
