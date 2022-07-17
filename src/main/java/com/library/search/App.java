package com.library.search;

import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns={"/portfolio","/digital-library","/job-notification"})
public class App extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	PrintWriter out;
	public void doPost(HttpServletRequest request, HttpServletResponse response) {
		doGet(request,response);
	}//end of do post method
	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		try {
			String path = request.getServletPath();
			out = response.getWriter();
			response.setContentType("text/html");
			if(path.equals("/portfolio")) {
				out.print("portfolio site will coming soon");
			}
			else if(path.equals("/digital-library")) {
				out.println("welcome to digital library");
			}else if(path.equals("/job-notification")) {
				out.println("welome to job notification");
			}
			}catch(Exception ex) {
				System.out.println(ex.toString());
			}finally {
				out.close();
			}
	}
}
