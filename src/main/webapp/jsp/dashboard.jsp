<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<link rel="icon" type="image/png" sizes="32x32" href="favicon.ico">
</head>
<body>
<%
try{
	final String token = request.getParameter("token");
	if(!(token==null))
	if(token.equals("@12#")){
		out.println("Admin login working");
		}else if(!(token.equals("@12#")) || (token==null)){
			RequestDispatcher rd = request.getRequestDispatcher("jsp/Login.jsp");
			rd.include(request, response);	
		}
}catch(Exception ex){
			out.println(ex.toString());
		}
		%>
<p>Admin login working</p>
</body>
</html>