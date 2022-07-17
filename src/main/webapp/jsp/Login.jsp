<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="jakarta.servlet.RequestDispatcher" %>
<!doctype html>
<html lang="en">
<head>
<title>Login</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://preview.colorlib.com/theme/bootstrap/login-form-18/css/A.style.css.pagespeed.cf.EsokhafFue.css">
<script nonce="40ef5613-191d-45f0-8893-4bd8c980477b">(function(w,d){!function(a,e,t,r){a.zarazData=a.zarazData||{},a.zarazData.executed=[],a.zaraz={deferred:[]},a.zaraz.q=[],a.zaraz._f=function(e){return function(){var t=Array.prototype.slice.call(arguments);a.zaraz.q.push({m:e,a:t})}};for(const e of["track","set","ecommerce","debug"])a.zaraz[e]=a.zaraz._f(e);a.zaraz.init=()=>{var t=e.getElementsByTagName(r)[0],z=e.createElement(r),n=e.getElementsByTagName("title")[0];for(n&&(a.zarazData.t=e.getElementsByTagName("title")[0].text),a.zarazData.x=Math.random(),a.zarazData.w=a.screen.width,a.zarazData.h=a.screen.height,a.zarazData.j=a.innerHeight,a.zarazData.e=a.innerWidth,a.zarazData.l=a.location.href,a.zarazData.r=e.referrer,a.zarazData.k=a.screen.colorDepth,a.zarazData.n=e.characterSet,a.zarazData.o=(new Date).getTimezoneOffset(),a.zarazData.q=[];a.zaraz.q.length;){const e=a.zaraz.q.shift();a.zarazData.q.push(e)}z.defer=!0;for(const e of[localStorage,sessionStorage])Object.keys(e||{}).filter((a=>a.startsWith("_zaraz_"))).forEach((t=>{try{a.zarazData["z_"+t.slice(7)]=JSON.parse(e.getItem(t))}catch{a.zarazData["z_"+t.slice(7)]=e.getItem(t)}}));z.referrerPolicy="origin",z.src="/cdn-cgi/zaraz/s.js?z="+btoa(encodeURIComponent(JSON.stringify(a.zarazData))),t.parentNode.insertBefore(z,t)},["complete","interactive"].includes(e.readyState)?zaraz.init():a.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,0,"script");})(window,document);</script></head>
<body>
<section class="ftco-section">
<div class="container">
<div class="row justify-content-center">
<div class="col-md-6 text-center mb-5">
<h2 class="heading-section">STUDENT LIBRARY</h2>
<a href="create-account">Create account</a>
</div>
</div>
<div class="row justify-content-center">
<div class="col-md-6 col-lg-5">
<div class="login-wrap p-4 p-md-5">
<div class="icon d-flex align-items-center justify-content-center">
<span class="fa fa-user-o"></span>

</div>
<h3 class="text-center mb-4">Have an account?</h3>
<form action="login" class="login-form" method="post">
<div class="form-group">
<input type="text" name="username" class="form-control rounded-left" placeholder="Username" required>
</div>
<div class="form-group d-flex">
<input type="password" name="password"class="form-control rounded-left" placeholder="Password" required>
</div>
<div class="form-group d-md-flex">
<div class="w-50">
<label class="checkbox-wrap checkbox-primary">Remember Me
<input type="checkbox" checked>
<span class="checkmark"></span>
</label>
</div>
<div class="w-50 text-md-right">
<a href="forgot-password">Forgot Password</a>
</div>
</div>
<div class="form-group">
<button type="submit" class="btn btn-primary rounded submit p-3 px-5">Get Started</button>
</div>
</form>
</div>
</div>
</div>
</div>
</section>
<% 
try{
	final String token = request.getParameter("token");
	if(!(token==null))
		if(token.equals("@12#")){
		
		}else{
		
		}
		}catch(Exception ex){
		out.println(ex.toString());
	}
%>
<script src="https://preview.colorlib.com/theme/bootstrap/login-form-18/js/jquery.min.js"></script>
<script src="https://preview.colorlib.com/theme/bootstrap/login-form-18/js/popper.js+bootstrap.min.js+main.js.pagespeed.jc.wRxug4_Avg.js"></script><script>eval(mod_pagespeed_mGxpOPO3_V);</script>
<script>eval(mod_pagespeed_hRdA8ZBafG);</script>
<script>eval(mod_pagespeed_jDGrFP5nZp);</script>
</body>
</html>
