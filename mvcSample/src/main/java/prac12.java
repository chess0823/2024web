import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/home")
public class prac12 extends HttpServlet{
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	
	PrintWriter out =resp.getWriter();
	
	String su1_=req.getParameter("su1");
	String su2_=req.getParameter("su2");

	int su1 = Integer.parseInt(su1_);
	int su2 = Integer.parseInt(su2_);
	
	int total = su1+su2;
	
	out.print("<html>");
	out.print("<body>");
	out.print("<h2>"+total+"</h2>");
	out.print("</body>");
	out.print("</html>");

}
}
