<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   

	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/styles.css">


<!-- Font Awesome icons (free version)-->
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->

</head>


<body id="page-top"> 
 	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
	    <div class="container">
	        <a class="navbar-brand js-scroll-trigger" href="#page-top">BookMall</a>
	   
			 <!-- 로그인 하지 않은 상태 -->
             <c:if test = "${member == null }">
                 <div><a href="/member/login">로그인</a></div>
             </c:if>  
             
			 <!-- 로그인 한 상태 -->
	 		 <c:if test="${ member != null }">
           		<div>
                    <span>회원 : ${member.name}</span>
                    <span>포인트 : <fmt:formatNumber value="${member.point }" pattern="#,###" /> </span>
					<a href="/member/logout.do">로그아웃</a>
				</div>
             </c:if>	
	        
	        <button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
	            Menu
	            <i class="fas fa-bars"></i>
	        </button>
	        <div class="collapse navbar-collapse" id="navbarResponsive">
	            <ul class="navbar-nav ml-auto">
	                <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#portfolio">Portfolio</a></li>
	                <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#about">About</a></li>
	                <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#contact">Contact</a></li>
	            </ul>
	        </div>
	    </div>
	</nav>
	<!-- Masthead-->
	<header class="masthead bg-primary text-white text-center">
	    <div class="container d-flex align-items-center flex-column">
	        <!-- Masthead Heading-->
	        <h1 class="masthead-heading text-uppercase mb-0">Book Mall</h1>
	        <!-- Icon Divider-->
	        <div class="divider-custom divider-light">
	            <div class="divider-custom-line"></div>
	            <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
	            <div class="divider-custom-line"></div>
	        </div>
	        <!-- Masthead Subheading-->
	        <p class="masthead-subheading font-weight-light mb-0">Book mall contents</p>
	    </div>
	</header>

	
	<!-- Footer-->
	<footer class="footer text-center">
	    <div class="container">
	        <div class="row">
	            <!-- Footer Location-->
	            <div class="col-lg-4 mb-5 mb-lg-0">
	                <p class="lead mb-0">
	                    location~~~~
	                    <br />
	                    location~~~~
	                </p>
	            </div>
	      
	            <!-- Footer About Text-->
	            <div class="col-lg-4">
	                <h4 class="text-uppercase mb-4">About info</h4>
	                <p class="lead mb-0">
	                   information
	                    
	                </p>
	            </div>
	        </div>
	    </div>
	</footer>
	
	
	<!-- Copyright Section-->
	<div class="copyright py-4 text-center text-white">
	    <div class="container">
	        <small>
	            BOOKMALL Website
	            <!-- This script automatically adds the current year to your website footer-->
	            <!-- (credit: https://updateyourfooter.com/)-->
	       
	        </small>
	    </div>
	</div>
	<!-- Scroll to Top Button (Only visible on small and extra-small screen sizes)-->
	<div class="scroll-to-top d-lg-none position-fixed">
	    <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top"><i class="fa fa-chevron-up"></i></a>
	</div>

</body>

</html>