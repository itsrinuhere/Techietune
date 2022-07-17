package com.library.search;
import  java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns={"/create-account","/forgot-password"})
public class Oauth extends HttpServlet{

	/**
	 * 
	 */

	PrintWriter out;
	private void createaccount(HttpServletRequest request, HttpServletResponse response){
		RequestDispatcher rd = request.getRequestDispatcher("jsp/signup.jsp");
		try {
			rd.forward(request,response);
		} catch (ServletException e) {
		
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	private void forgotpassword(HttpServletRequest request, HttpServletResponse response){
		out.println("forgot password");
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response) {
		doGet(request,response);
	}//end of do post method
	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		try {
			String path = request.getServletPath();
			out = response.getWriter();
			response.setContentType("text/html");
			if(path.equals("/create-account")) {
				createaccount(request,response);
			}
			if(path.equals("/forgot-password")) {
				forgotpassword(request,response);
			}
			
		}catch(Exception ex) {
			System.out.println(ex.toString());
		}finally {
			out.close();
		}
	}//end of do get method
}
