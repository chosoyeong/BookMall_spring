<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>RegistrationForm</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
		
		<!-- STYLE CSS -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
		
		<link rel="stylesheet" href="/resources/css/member/join.css">
	
		<script
		  src="https://code.jquery.com/jquery-3.4.1.js"
		  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
		  crossorigin="anonymous"></script>
	</head>

	<body>

		<div class="wrapper">
			<div class="inner">
				<form id="join_form" method="post">
					<h3>Registration Form</h3>
					<div class="form-group">
						<div class="form-wrapper">
							<label for="">이름:</label>
							<div class="form-holder">
								<i class="zmdi zmdi-account-o"></i>
								<input type="text" class="form-control" name="name">
							</div>
						</div>
						<div class="form-wrapper">
							<label for="">이메일:</label>
							<div class="form-holder">
								<i style="font-style: normal; font-size: 15px;">@</i>
								<input type="text" class="form-control" name="email">
							</div>
						</div>
					</div>
					
					<div class="form-group">
						<div class="form-wrapper">
							<label for="">아이디:</label>
							<div class="form-holder">
								<i class="zmdi zmdi-account-o"></i>
								<input type="text" class="form-control" name="member_id">
							</div>
						</div>
					</div>
					
					<div class="form-group">
						<div class="form-wrapper">
							<label for="">비밀번호:</label>
							<div class="form-holder">
								<i class="zmdi zmdi-lock-outline"></i>
								<input type="password" class="form-control" placeholder="********" name="pw">
							</div>
						</div>
						<div class="form-wrapper">
							<label for="">비밀번호 확인:</label>
							<div class="form-holder">
								<i class="zmdi zmdi-lock-outline"></i>
								<input type="password" class="form-control" placeholder="********">
							</div>
						</div>
					</div>
					
					<div class="form-group">
						<div class="form-wrapper">
							<label for="">휴대폰 번호:</label>
							<div class="form-holder">
								<i class="zmdi zmdi-account-o"></i>
								<input type="text" class="form-control" name="phone">
							</div>
						</div>
						<div class="form-wrapper">
							<label for="">생년월일:</label>
							<div class="form-holder">
								<i style="font-style: normal; font-size: 15px;"></i>
								<input type="text" class="form-control" name="birth">
							</div>
						</div>
					</div>
					
					<div class="form-group">
						<div class="form-wrapper">
							<label for="">주소:</label>
							<div class="form-holder">
								<i style="font-style: normal; font-size: 15px;">@</i>
								<input type="text" class="form-control" name="addr">
							</div>
						</div>
						<div class="form-wrapper">
							<label for="">성별:</label>
							<div class="form-holder select">
								<select name="gender" id="" class="form-control">
									<option value="m">남</option>
									<option value="f">여</option>
								</select>
								<i class="zmdi zmdi-face"></i>
							</div>
						</div>
					</div>
					<div class="form-end">
						<div class="checkbox">
							<label>
								<input type="checkbox"> 약관동의 넣을지,,,?
								<span class="checkmark"></span>
							</label>
						</div>
						<div class="button-holder">
							<button>가입하기</button>
						</div>
						
					</div>
				</form>
			</div>
		</div>
		
		<script>

		$(document).ready(function(){
			//회원가입 버튼(회원가입 기능 작동)
			$(".join_button").click(function(){
				$("#join_form").attr("action", "/member/join");
				$("#join_form").submit();
			});
		});
		
		</script>
		
	</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>