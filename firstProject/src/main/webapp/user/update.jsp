<%@page import="mini.dto.User"%>
<%@page import="mini.dao.UserRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ChanterLiving</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<!-- 다음번에 링크로 연결하  -->
    <link rel="stylesheet" href="../static/css/user/join.css">
</head>
<body style="background-color: #174c6b">			<!-- 임시로 넣은 색 -->
	
	<jsp:include page="/layout/header.jsp" />
	<jsp:include page="/layout/centerText.jsp" />
	<%
		String root = request.getContextPath();
		String loginId = (String) session.getAttribute("loginId");
		
	 	if ( loginId == null || loginId.equals("") ) {
			response.sendRedirect(root);
		}  
		
		UserRepository userDAO = new UserRepository();
		User user = new User();
		
		user = userDAO.getuserId(loginId);
	%> 
	
	<!-- 정보 수정 영역 -->
	<div class="container mb-5" style="max-width: 1000px">
		<form action="../user_pro/update_pro.jsp" onsubmit="return checkUser()" name="updateForm" method="post" >				<!-- join_pro.jsp로 post방식으로 보냄 -->
			<div class="product">
				<div class="inputTogether mb-3 row">
					<label id="inputLabel" class="col-md-2" id="">아이디</label>
					<input id="inputText" type="text" class="col-md-9" name="id" value = "<%= user.getId() %>" readonly>
				</div>
			</div>
			<div class="product">
				<div class="inputTogether mb-3 row">
					<label id="inputLabel" class="col-md-2" id="">비밀번호</label>
					<input id="inputText" type="text" class="col-md-9" name="pw" placeholder="비밀번호" required>
				</div>
			</div>
			<div class="product">
				<div class="inputTogether mb-3 row">
					<label id="inputLabel" class="col-md-2" id="">비밀번호 확인</label>
					<input id="inputText" type="text" class="col-md-9" name="repw" placeholder="비밀번호 확인" required>
				</div>
			</div>
			<div class="product">
				<div class="inputTogether mb-3 row">
					<label id="inputLabel" class="col-md-2" id="">성함</label>
					<input id="inputText" type="text" class="col-md-9" name="name" value = "<%= user.getName() %>" required>
				</div>
			</div>
			<div class="product">
				<div class="inputTogether mb-3 row">
					<label id="inputLabel" class="col-md-2" id="">주소</label>
					<input id="inputText" type="text" class="col-md-9" name="address" value = "<%= user.getAddress() %>" required>
				</div>
			</div>
			<div class="product">
				<div class="inputTogether mb-3 row">
					<label id="inputLabel" class="col-md-2" id="">연락처</label>
					<input id="inputText" type="text" class="col-md-9" name="phone" value = "<%= user.getPhone() %>" required>
				</div>
			</div>
					
			<div class="d-flex justify-content-center mt-5 mb-5">
				<a href="javascript: history.back()" class="btn btn-lg btn-primary mx-3">뒤로 가기</a>
				<a href="javascript: ;" onclick="alertDel()" class="btn btn-lg btn-primary mx-3">탈퇴</a>
				<input type="submit" class="btn btn-lg btn-success mx-3" value="수정하기" />
			</div>	
		</form>
	</div>
	
	
	

	<jsp:include page="/layout/footer.jsp" />
	<jsp:include page="/layout/script.jsp" />
</body>
</html>