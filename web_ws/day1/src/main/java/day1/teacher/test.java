package day1.teacher;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/good")
public class test extends HttpServlet{


	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//1~10홀수 합 
		int sum=0;
		int n=0;
			for(int i=1; i<=10; i+=2 ) {
				sum += i;
			}
			
			PrintWriter out =resp.getWriter();
			
			out.println("<html>");
			out.println("<head>");
			out.println("</head>");
			out.println("<body>");
			out.println("<h2>" + sum + "</h2>");
			out.println("</body>");
			out.println("</html>");
	}
}
