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
		
	
		<script
		  src="https://code.jquery.com/jquery-3.4.1.js"
		  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
		  crossorigin="anonymous"></script>
	</head>

	<body>

		<div class="wrapper">
			<div class="inner">
				<form id="join_form" method="post">
					<h3>회원가입</h3>
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
								<input type="text" class="id_input" name="member_id">					
							</div>															
						</div>
						
						<div class="form-wrapper">
						</br>
						<div class="form-holder">
							<span class="id_input_re_1">사용 가능한 아이디입니다.</span>
							<span class="id_input_re_2">아이디가 이미 존재합니다.</span>				
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
								<input type="DATE" class="form-control" name="birth">
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
		
		//아이디 중복검사
		$('.id_input').on("propertychange change keyup paste input", function(){
			
			var member_id = $('.id_input').val();			// .id_input에 입력되는 값
			var data = {member_id : member_id}				// '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'
			
			$.ajax({
				type : "post",
				url : "/member/memberIdChk",
				data : data,
				success : function(result){
					if(result != 'fail'){
						$('.id_input_re_1').css("display","inline-block");
						$('.id_input_re_2').css("display", "none");				
					} else {
						$('.id_input_re_2').css("display","inline-block");
						$('.id_input_re_1').css("display", "none");				
					}
					
				}// success 종료
			}); // ajax 종료

		});// function 종료
		
		</script>
		
		
		
	</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>