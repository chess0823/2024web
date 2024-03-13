package day1.prac;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class bookinfo extends HttpServlet {
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	resp.setCharacterEncoding("utf-8");
	resp.setContentType("text/html");
	
	PrintWriter out =resp.getWriter();
	
	Book book = new Book();
	
	book.setAuthor("아서 코난 도일");
	book.setPrice(15000);
	book.setTitle("셜록홈즈");
	
	
	
}
}
