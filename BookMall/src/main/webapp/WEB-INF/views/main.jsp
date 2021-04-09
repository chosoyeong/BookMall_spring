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
</head>
<body>

<!-- todo: 아랫부분은 추후 bootstrap 활용하여 수정 -->
<!-- <div class="wrapper">
	<div class="wrap">
		<div class="top_gnb_area">
			<h1>gnb area</h1>
		</div>
		<div class="top_area">
			<div class="logo_area">
				<h1>logo area</h1>
			</div>
			<div class="search_area">
				<h1>Search area</h1>
			</div>
			<div class="login_area">
				<div class="login_button"><a href="/member/login">로그인</a></div>
				<span><a href="/member/join">회원가입</a></span>
			</div>
			<div class="clearfix"></div>			
		</div>
		<div class="navi_bar_area">
			<h1>navi area</h1>
		</div>
		<div class="content_area">
			<h1>content area</h1>
		</div>
				
	</div>
</div> -->

 <div class="wrapper">
	<div class="wrap">
	
	
			 <!-- 로그인 하지 않은 상태 -->
             <c:if test = "${member == null }">
                 <div class="login_button"><a href="/member/login">로그인</a></div>
             </c:if>  
             
			 <!-- 로그인 한 상태 -->
	 		 <c:if test="${ member != null }">
           		<div class="login_success_area">
                    <span>회원 : ${member.name}</span>
                    <span>포인트 : <fmt:formatNumber value="${member.point }" pattern="#,###" /> </span>
				</div>
             </c:if>
	
			
			
			
	</div>
</div>



</body>
</html>