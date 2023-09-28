<%@page import="mini.dto.Product"%>
<%@page import="mini.dao.ProductRepository"%>
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
	 <script src="<%= request.getContextPath() %>/static/js/validation.js"></script>	
	
    <%
		String product_Id = request.getParameter("id");
		ProductRepository productDAO = new ProductRepository();
		Product product = new Product();
		
		if( product_Id != null ) {
			product = productDAO.getProductById(product_Id);
		}
	%>	


	<!-- 상품 수정 입력 화면 -->
	<div class="container mb-5" style="max-width: 800px">
		<form name="product" action="../mainPart_pro/update_pro.jsp" onsubmit="return checkProduct()" method="post" enctype="multipart/form-data">
		    <div class="product">
				<div class="inputTogether mb-3 row">
					<h3>상품 업데이트 창입니다.</h3>
				</div>
			</div>
			<div class="product">
				<div class="inputTogether mb-3 row">
					<label id="inputLabel" class="col-md-2" id="">상품 코드</label>
					<input id="inputText" type="text" class="col-md-9" name="product_id" value="<%= product.getProduct_id() %>" readonly>
				</div>

				<div class="inputTogether mb-3 row">
					<label id="inputLabel" class="col-md-2" id="">상품명</label>
					<input id="inputText" type="text" class="col-md-9" name="product_name" value="<%= product.getProduct_name() %>">
				</div>
			</div>
			<div class="product">
				<div class="inputTogether mb-3 row">
					<label id="inputLabel" class="col-md-2" id="">상세정보</label>
					<textarea id="inputText" class="col-md-9" name="description" 
						  style="height: 400px !important;"> <%= product.getDescription() %></textarea>
				</div>
			</div>
			<div class="product">
				<div class="inputTogether mb-3 row">
					<label id="inputLabel" class="col-md-2" id="">상품 이미지</label>
					<input id="inputText" type="file" class="col-md-9" name="img" required>
				</div>
			</div>

			
			<div class="d-flex justify-content-between mt-5 mb-5">
				<a href="./products.jsp" class="btn btn-lg btn-outline-light">목록</a>
				<input type="submit" class="btn btn-lg btn-outline-light" value="업데이트" />
			</div>
		
		</form> 
	</div>
	<jsp:include page="/layout/footer.jsp" />
	<jsp:include page="/layout/script.jsp" />
</body>
</html>