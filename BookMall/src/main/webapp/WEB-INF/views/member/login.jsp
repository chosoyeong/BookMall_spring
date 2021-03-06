<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login</title>
	<script
	  src="https://code.jquery.com/jquery-3.4.1.js"
	  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	  crossorigin="anonymous">
	</script>
	<script src="https://apis.google.com/js/platform.js" async defer></script>	
	
	<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 	<meta name = "google-sign-client_id" content="YOUR_CLIENT_ID.apps.googleusercontent.com">
 -->
	<meta name = "google-signin-client_id"content = "796506631090-fdtdb9df5rfu7pgod93f431muocdg5g3.apps.googleusercontent.com">
 

<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
<!--===============================================================================================-->
	
	
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('/resources/images/bg-01.jpg');">
			<div class="wrap-login100">
				<form class="login100-form validate-form" id="login_form" method="post">
					<span class="login100-form-logo">
						<i class="zmdi zmdi-landscape"></i>
					</span>

					<span class="login100-form-title p-b-34 p-t-27">
						Log in
					</span>

					
					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<input class="input100" type="text" name="member_id" placeholder="Id">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100_pw" type="password" name="pw" placeholder="Password">
						<span class="focus-input100_pw" data-placeholder="&#xf191;"></span>
					</div>
							
		            <c:if test = "${result == 0 }">
		                <div class = "login_warn">????????? ID ?????? ??????????????? ?????? ?????????????????????.</div>
		            </c:if>
					
					
					<div class="contact100-form-checkbox">
						<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
						<label class="label-checkbox100" for="ckb1">
							????????? ??????
						</label>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Login
						</button>
					</div>				
										
					<div class="text-center p-t-50">
						<a class="txt1" href="/member/join">
							sign up
						</a>
					</div>

					<div class="text-center p-t-50">
						<a class="txt1" href="#">
							Forgot password?
						</a>
					</div>
										
				</form>
	


	
	<fieldset>
		<div id="googleLoginBtn" style="cursor: pointer">
			<img width="230" id="googleLoginImg" src="${pageContext.request.contextPath}/resources/images/btn_google_signin_dark_normal_web@2x.png">
		</div>
	</fieldset>
				
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/jquery/jquery-3.2.1.min.js" />"> </script>
	
<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/animsition/js/animsition.min.js" />"> </script>
	
<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/bootstrap/js/popper.js" />"> </script>
	<script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.min.js" />"> </script>
	
<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/select2/select2.min.js" />"> </script>
	
<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/daterangepicker/moment.min.js" />"> </script>
	<script src="<c:url value="/resources/vendor/daterangepicker/daterangepicker.js" />"> </script>
	
<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/countdowntime/countdowntime.js" />"> </script>
	
<!--===============================================================================================-->
	<script src="<c:url value="/resources/js/main.js" />"> </script>
	
	<script>
    /* ????????? ?????? ?????? ????????? */
    $(".login100-form-btn").click(function(){
        
        /* ????????? ????????? ?????? ?????? */
        $("#login_form").attr("action", "/member/login");
        $("#login_form").submit();
 
    });    
    </script> 
    
    
      
</body>


</html>