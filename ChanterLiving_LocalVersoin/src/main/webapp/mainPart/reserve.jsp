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
	<!-- 다음번에 링크로 연결하기  -->
    <link rel="stylesheet" href="../static/css/user/join.css">
</head>
<body style="background-color: #174c6b">			<!-- 임시로 넣은 색 -->
	<jsp:include page="/layout/header.jsp" />
	<jsp:include page="/layout/centerText.jsp" />

	<%
 	
		String root = request.getContextPath();
		String id = (String) request.getParameter("loginId");
		
		if ( id == null || id.equals("") ) {
			response.sendRedirect(root);
		}
		
		UserRepository userDAO = new UserRepository();
		User user = new User();
		
		user = userDAO.getuserId(id); 
	
	%>	 
	
	<!-- productId를 post로 넘겨받음 -->
	
	<!-- 예약 정보 입력 -->
	<div class="container mb-5" style="max-width: 1000px">
		<form action="../mainPart_pro/reserve_pro.jsp" onsubmit="return checkReserve()" name="reserveform" class="form-horizontal" method="post">
			<div class="product">
				<input type="hidden" name="productId" value="<%= request.getParameter("productId") %>" />
				<div class="inputTogether mb-3 row">
					<label id="inputLabel" class="col-md-2" id="">아이디</label>
					<input id="inputText" type="text" class="col-md-9" name="id" value="<%= user.getId() %>" readonly>
				</div>
				<div class="inputTogether mb-3 row">
					<label id="inputLabel" class="col-md-2" id="">성함</label>
					<input id="inputText" type="text" class="col-md-9" name="name" value="<%= user.getName() %>" required>
				</div>
				<div class="inputTogether mb-3 row">
					<label id="inputLabel" class="col-md-2" id="">주소</label>
					<input id="inputText" type="text" class="col-md-9" name="address" value="<%= user.getAddress() %>" required>
				</div>
			</div>
			<div class="product">
				<div class="inputTogether mb-3 row">
					<label id="inputLabel" class="col-md-2" id="">연락처</label>
					<input id="inputText" type="text" class="col-md-9" name="phone" value="<%= user.getPhone() %>" required>
				</div>
			</div>
			
					<!-- 여기까지는 DB에서 정보를 받아오고 이 뒤로는 직접 입력하기 -->
			
			<div class="product">
				<div class="inputTogether mb-3 row">
					<label id="inputLabel" class="col-md-2" id="">평수</label>
					<input id="inputText" type="text" class="col-md-9" name="size" value="" >
				</div>
			</div>
			<div class="product">
				<div class="inputTogether mb-3 row">
					<label id="inputLabel" class="col-md-2" id="">예약 희망 날짜</label>
					<input id="inputText" type="text" class="col-md-9" name="date" value="" required>
				</div>
			</div>					
			
			<!-- 버튼 영역 -->
			<div class="d-flex justify-content-between mt-5 mb-5">
				<div class="item">
					<a href="./product.jsp" class="btn btn-lg btn-success">상품 다시보기</a>		
					<a href="./products.jsp" class="btn btn-lg btn-danger">메인</a>				
				</div>
				<div class="item">
					<input type="submit" class="btn btn-lg btn-primary" value="예약하기" />
				</div>
			</div>
		</form>
		
		<!-- reserve_pro.jsp 로 post방식으로 처리 -->
		
	</div>
	
	
	

	
	<jsp:include page="/layout/footer.jsp" />
	<jsp:include page="/layout/script.jsp" />
</body>
</html>