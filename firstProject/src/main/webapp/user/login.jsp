<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ChanterLiving</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<link rel="stylesheet" href="../static/css/layout/login.css">
</head>
<body>

	<%
	
		Cookie[] cookies = request.getCookies();
	
		String id = "";
		String checkId = "";
		
		for(int i = 0; i < cookies.length; i++) {
			if(cookies[i].getName().equals("id")) {
				id = cookies[i].getValue();
			}
			
			if(cookies[i].getName().equals("check")) {
				checkId = cookies[i].getValue();
			}
		}
	%>

 
	<div class="login-wrap">
		<form name="signinin" action="../user_pro/login_pro.jsp" method="POST"> <!-- post방식으로 login_pro로 보내서 로직 처리 -->
		    <div class="login-html">
		        <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
		        <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">ChanterLiving</label>
		        <div class="login-form">
		            <div class="sign-in-htm">
		                <div class="group">
		                    <label for="user" class="label">ID</label>
		                    <input id="user" type="text" class="input" name="id" value="<%= id %>" autofocus required>
		                </div>
		                <div class="group">
		                    <label for="pass" class="label">Password</label>
		                    <input id="pass" type="password" class="input" data-type="password" name="pw" required>
		                </div>
		                <div class="group">
		                 <% 
		                		if( checkId.equals("on") ) {
		                	%>
		                    	<input id="check" type="checkbox" name ="checkId" class="check" checked />
		                    <%
		                		} else {
		                    %>
		                    	<input id="check" type="checkbox"  name ="checkId" class="check" />
		                    <%
		                		}
		                    %>
		                    	<label for="check"><span class="icon"></span>ID기억하기</label>
		                </div>
		                <div class="group">
		                    <input type="submit" class="button" value="Login">
		                </div>
		                <div class="hr"></div>
		                <div class="foot-lnk">
		                    <a href="이거 가능한가?">비밀번호를 잊으셨나요?</a>
		                </div>
		            </div>
		            <div class="sign-up-htm">
		                
						<img style="border-radius: 15px; float: center; margin: 30px 65px; width: 270px; margin-top: " src="../static/img/comouterImg.jpg" alt="AS flow"/>
		                
<!-- 						<br>                 -->
<!-- 						<p> -->
<!-- 			                우리는 단순히 인테리어를 하는게 아니라 -->
<!-- 							라이프 스타일을 짓습니다. -->
<!-- 		                </p> -->
<!-- 						<p> -->
<!-- 							ChanterLiving의 디자인 -->
<!-- 							공간을 새롭게 정의해 보세요.		                 -->
<!-- 		                </p> -->
		                
		            </div>
		        </div>
		    </div>
		</form>
	  </div>


	
	
	



	<jsp:include page="/layout/script.jsp" />
</body>
</html>