package day1.prac;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hab")
public class 두수의합 extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int su1 = Integer.parseInt(req.getParameter("su1"));
		int su2 = Integer.parseInt(req.getParameter("su2"));
		int sum=su1+su2;
		
		resp.setContentType("text/html");
		
		resp.setCharacterEncoding("utf-8");
		PrintWriter out =resp.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		out.println("<body>");
		out.println(sum);
		out.println("</body>");
		out.println("</html>");
		
		
	}
}
