package day6_2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class byeServlet extends HttpServlet{
@Override
protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		
		
		int sum=0;
		for(int i=0; i<10; i++) {
			i=i+1;
			sum=sum+i;
		}
		
		out.println("<html>");
		out.println("<html>");
		out.println("<html>");
		out.println("<html>");
	}
}
