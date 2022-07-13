<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="javax.servlet.http.*" %>
<%@ page import ="java.util.List"%>
<%@ page import ="java.util.Arrays" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import ="com.library.search.*" %>       

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>search</title>
  <link rel="icon" type="image/png" sizes="32x32" href="favicon.ico">
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  <!-- Vendor CSS Files -->
  <link href="<% out.println(request.getContextPath()); %>/jsp/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="<% out.println(request.getContextPath()); %>/jsp/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="<% out.println(request.getContextPath()); %>/jsp/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="<% out.println(request.getContextPath()); %>/jsp/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="<% out.println(request.getContextPath()); %>/jsp/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="<% out.println(request.getContextPath()); %>/jsp/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="<% out.println(request.getContextPath()); %>/jsp/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="<% out.println(request.getContextPath()); %>/jsp/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="<% out.println(request.getContextPath()); %>/jsp/assets/css/style.css" rel="stylesheet">
 		<style>
		body{
		background :#DAEAF1;}
	</style>
</head>
<body>
 <main id="main">
     <!-- Navigation-->
     
<div class="text-center">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Studentlibo</h2>
          <ol>
          <li><a href="login"><span class="glyphicon glyphicon-user"></span>Login</a></li>
          <li><a href="<% out.println(request.getContextPath()); %>">Home</a></li>
           <li> <a href="search">search</a></li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->
	
 

    <!-- ======= Blog Section ======= -->
    <section id="blog" class="blog">
      <div class="container" data-aos="fade-up">

        <div class="row">

          <div class="col-lg-8 entries">

      

        

<%
ArrayList<Library> al=  (ArrayList<Library>)request.getAttribute("data");
if(!(al==null))
for(Library a: al){
	%>
            <article class="entry">

              <div class="entry-img">
                <img src="assets/img/blog/blog-4.jpg" alt="" class="img-fluid">
              </div>

              <h2 class="entry-title">
                <a href="blog-single.html"><%= a.getBook_name() %></a>
              </h2>

              <div class="entry-meta">
                <ul>
                  <li class="d-flex align-items-center"><i class="bi bi-person"></i> <%=a.getBook_auther()%></li>
                  <li class="d-flex align-items-center"><i class="bi bi-clock"></i> <time datetime="2020-01-01">Jan 1, 2020</time></li>
                  <li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i>12 Comments</li>
                </ul>
              </div>

              <div class="entry-content">
                                <ul>
                <li>Book Regulation :	<%=a.getBook_regulation() %></li>
                <li>Book Type 		:	<%=a.getBook_type() %></li>
                <li>Book category   :	<%=a.getBook_category() %></li>
                <li>Book subject    :	<%=a.getBook_subject() %></li>
                <li>Book tags 		:	<%=a.getBook_tags() %></li>
                <li>Description		:	<%=a.getBook_description() %></li>
                </ul>
              
                <div class="read-more">
                  <a href="<%=a.getLink()%>">Download</a>
                </div>
              </div>
           </article> <!-- End blog entry -->
<%
}else{
	out.println("Not found");
}
%>
           

          </div><!-- End blog entries list -->

          <div class="col-lg-4">

            <div class="sidebar">

              <h3 class="sidebar-title">Search</h3>
              <div class="sidebar-item search-form">
                <form action="search" method="post">
                  <input type="text" name ="input">
                  <button type="submit"><i class="bi bi-search"></i></button>
                </form>
              </div><!-- End sidebar search formn-->

              <h3 class="sidebar-title">Categories</h3>
              <div class="sidebar-item categories">
                <ul>
                  <li><a href="#">General <span>(25)</span></a></li>
                  <li><a href="#">Lifestyle <span>(12)</span></a></li>
                  <li><a href="#">Travel <span>(5)</span></a></li>
                  <li><a href="#">Design <span>(22)</span></a></li>
                  <li><a href="#">Creative <span>(8)</span></a></li>
                  <li><a href="#">Educaion <span>(14)</span></a></li>
                </ul>
              </div><!-- End sidebar categories-->

              <h3 class="sidebar-title">Recent Posts(coming soon)</h3>
              <div class="sidebar-item recent-posts">
                <div class="post-item clearfix">
                  <img src="assets/img/blog/blog-recent-1.jpg" alt="">
                  <h4><a href="#">test</a></h4>
                  <time datetime="2020-01-01">test</time>
                </div>

              </div><!-- End sidebar recent posts-->

              <h3 class="sidebar-title">Tags</h3>
              <div class="sidebar-item tags">
                <ul>
                  <li><a href="#">coming soon</a></li>
                  <li><a href="#">coming soon</a></li>
                </ul>
              </div><!-- End sidebar tags-->

            </div><!-- End sidebar -->

          </div><!-- End blog sidebar -->

        </div>

      </div>
    </section><!-- End Blog Section -->

  </main><!-- End #main -->
	
	
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="<% out.println(request.getContextPath()); %>/jsp/assets/vendor/aos/aos.js"></script>
  <script src="<% out.println(request.getContextPath()); %>/jsp/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="<% out.println(request.getContextPath()); %>/jsp/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="<% out.println(request.getContextPath()); %>/jsp/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="<% out.println(request.getContextPath()); %>/jsp/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="<% out.println(request.getContextPath()); %>/jsp/assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="<% out.println(request.getContextPath()); %>/jsp/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="<% out.println(request.getContextPath()); %>/jsp/assets/js/main.js"></script>
</body>
</html>