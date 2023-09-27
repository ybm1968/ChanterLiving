<%@page import="java.util.List"%>
<%@page import="mini.dto.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="productDAO" class="mini.dao.ProductRepository" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.card {
  border: none;
  background-color: none;
}

/* 이미지에 호버를 주기 위한 css */
.for-hover{
	transition: transform 0.3s ease;
}
.for-hover:hover {
	transform: scale(1.09);
}

</style>
<body>
	<%
		List<Product> topList = productDAO.toplist();  
		String root = request.getContextPath();
	%>	
	<div class="container mb-5">
		<div class="row gy-4 justify-content-center">
	        <%
	        if (topList.size() >3) {
		        for(int i = 0; i < 3; i++ ) {
		            Product product = topList.get(i);      
	        %>		
	        <div class="col-md-6 col-xl-4 col-xxl-3">
	            <div class="card p-3">
	                <%-- 상품 이미지 영역 --%>
	                <div class="img-content d-flex align-items-center for-hover">
	                    <img style="border-radius:30px; width: 100%; height: 180px; object-fit: cover; border-radius: 30px; " src="<%= root %>/img?id=<%= product.getProduct_id() %>" class="w-100 p-2" />
	                </div>
	                <%-- 상품 컨텐츠 영역 --%>
	                <div class="content">
	                    <h3 class="text-center"><%= product.getProduct_name() %></h3>
	                    <p class="d-flex justify-content-end">
	                        <a href="./product.jsp?id=<%= product.getProduct_id() %>" class="btn btn-outline-dark for-hover">상세정보</a>
	                    </p>
	                    <p class="text-start price"><%= product.getDescription() %></p>
	                </div>
	            </div>
	        </div>
	        <% 
		        }
	        }
	        %>
	    </div>
	</div>

</body>
</html>