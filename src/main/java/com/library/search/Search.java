package com.library.search;
import java.io.PrintWriter;
import java.util.ArrayList;
import org.hibernate.Session;
import org.hibernate.query.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import com.google.api.client.auth.oauth2.Credential {"/search","/all","/category","/login"});
//@WebServlet(urlPatterns={"/all","/category","/login"})
public class Search extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	PrintWriter out;
	public void doPost(HttpServletRequest request, HttpServletResponse response) {
		doGet(request,response);
	}
	@SuppressWarnings({ "unchecked"})
	private ArrayList<Library> search(String input){
		Session session = HibernateUtil.getSessionFactory().openSession();
		//Transaction transaction =session.beginTransaction();
		session.beginTransaction();
		String s ="from com.library.search.Library library WHERE library.book_name like '%"+input+"%' or library.book_subject like '%"+input+"%' or  library.book_tags like '%"+input+"%'";
		@SuppressWarnings("deprecation")
		Query<Library> query = session.createQuery(s);
		ArrayList<Library> data =(ArrayList<Library>) query.list();
		session.flush();
		session.close();
		return data;
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		try {
			out = response.getWriter();
			response.setContentType("text/html");
			String path = request.getServletPath();
			if(path.equals("/search")) {
					final String input = request.getParameter("input");
					if(!(input == null)){
						ArrayList<Library> ls = search(input);
						request.setAttribute("data", ls);
						RequestDispatcher rd = request.getRequestDispatcher("jsp/search.jsp");
						rd.forward(request,response);
					}else {
						//out.print("1");
						RequestDispatcher rd = request.getRequestDispatcher("jsp/search.jsp");
						rd.forward(request,response);
						}
			}else if(path.equals("/all")) {
				out.println("all");
				}else if(path.equals("/category")) {
			out.println("category");
			}else if(path.equals("/login")) {
				final String username = request.getParameter("username");
				final String password = request.getParameter("password");
				if(!(username == null) && !(password == null) )
				if(username.equals("admin") && password.equals("admin")){
					request.setAttribute("token", "#12@");
					RequestDispatcher rd = request.getRequestDispatcher("jsp/dashboard.jsp");
					rd.forward(request,response);
				}else {
					request.setAttribute("token","@12#");
					RequestDispatcher rd = request.getRequestDispatcher("jsp/Login.jsp");
					rd.include(request, response);	
				}
				else{
					RequestDispatcher rd = request.getRequestDispatcher("jsp/Login.jsp");
					rd.include(request, response);
				}
				
			}
	}
		catch(Exception ex) {
			out.println(ex);
		}finally {
			//HibernateUtil.shutdown();
			out.close();
		}
	}
}
