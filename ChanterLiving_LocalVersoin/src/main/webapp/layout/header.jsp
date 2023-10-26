<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String loginId = (String) session.getAttribute("loginId");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <%-- 구글 폰트 --%>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Anton&family=Dancing+Script:wght@400;700&family=Gowun+Batang:wght@700&family=Parisienne&family=Questrial&family=Song+Myung&display=swap" rel="stylesheet">	<style type="text/css">
		.logo {
			font-family: 'Anton', sans-serif;
			font-family: 'Dancing Script', cursive;
			font-family: 'Gowun Batang', serif;
			font-family: 'Parisienne', cursive;
			font-family: 'Questrial', sans-serif;
			font-family: 'Song Myung', serif;
		}
	</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
	  <div class="container-fluid">
	  	<div style="margin-left: 15vw;"> <!-- 레이아웃 한번 보려고 잠깐 넣었습니다. -->
	  		
	  	</div>
	    <a class="navbar-brand logo" href="../mainPart/products.jsp">ChanterLiving</a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		      	<ul class="navbar-nav me-auto mb-2 mb-lg-0">
			   	<%
			  		if(loginId == null || loginId.equals("")){
			  	%>
		        <li class="nav-item">
		          <a class="nav-link" href="../user/login.jsp">로그인</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link active" aria-current="page" href="../user/join.jsp">회원가입</a>
		        </li>
			      <%
			  		} else {
			      %>
		        <li class="nav-item">
		          <a class="nav-link aria-disabled="true"  href="../user/update.jsp" >내정보 수정하기</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="../user_pro/logout_pro.jsp">로그아웃</a>
		        </li>
			      <%
			  		}
			      %>
				</ul>
		     	<ul class="navbar-nav ml-auto" style="margin-right: 15vw">
					<li class="nav-item">
		          		<a class="nav-link" href="../subPart/introduction.jsp">기업 소개</a>
		          	</li>	          	
					<li class="nav-item">
		          		<a class="nav-link" href="../subPart/aiDesign.jsp">AI service</a>
		          	</li>
		     		<li class="nav-item">
		          		<a class="nav-link" href="../subPart/AS_service.jsp">A/S 알아보기</a>
		          	</li>
				</ul>
	    	</div>
	  	</div>
	</nav>
</body>
</html>