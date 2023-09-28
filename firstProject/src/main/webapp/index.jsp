<%@page import="mini.dto.Product"%>
<%@page import="mini.dao.ProductRepository"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="productDAO" class="mini.dao.ProductRepository" />
<%
	String loginId = (String) session.getAttribute("loginId");
	String root = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ChanterLiving</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
	<link rel="stylesheet" href="${ root }static/css/mainPart/products.css">

</head> 


<body>
	<jsp:include page="/layout/header1.jsp" />
	<%-- 메인 동영상 재생 부분 --%>
	<div class="jb-box">
		<video muted autoplay loop>
			<source src="${ root }static/video/mainBackVideo4.mp4" type="video/mp4">
		</video>
		<%--  --%>
		<div class="jb-text">
			<div class="px-4 py-5 my-5 text-center">
				<div class="col-lg-6 mx-auto">
					<p class="lead mb-4">당신의 공간에 가치를 더하세요</p>
					<div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
						<!-- 상품 관련 버튼 -->
						<!-- 비회원일 때 -->
					  	<%
					  		if(loginId == null || loginId.equals("")){
					  	%>	
						<a href="${ root }subPart/introduction.jsp"
							class="btn btn2 btn-lg px-4 gap-3 for-hover">기업소개</a>
						<a href="${ root }subPart/aiDesign.jsp"
							class="btn btn4 btn-lg px-4 gap-3 for-hover">AI service</a>
					  	<%
					  		}else if(loginId.equals("admin")){
					  	%>	
						<!-- 관리자일 때 -->
						<a href="add.jsp" class="btn btn2 btn-lg px-4 gap-3  for-hover">상품 등록</a> 
						<a
							href="${ root }list/reservationList.jsp"
							class="btn btn3 btn-lg px-4 gap-3 for-hover">예약리스트</a>
						<a
							href="${ root }list/customerList.jsp"
							class="btn btn4 btn-lg px-4 gap-3 for-hover">고객리스트</a>
						<a href="${ root }subPart/aiDesign.jsp"
							class="btn btn4 btn-lg px-4 gap-3 for-hover">AI service </a>							
					    <%
					  	
					  		}else{	
					  	%>
						<!-- 유저일 때 -->
						<a href="${ root }user/reservationList.jsp"
							class="btn btn4 btn-lg px-4 gap-3 for-hover" >예약정보 조회</a>
						<a href="${ root }subPart/expectedEstimate.jsp"
							class="btn btn1 btn-lg px-4 gap-3 for-hover">예상 견적보기</a> 
						<a href="${ root }subPart/introduction.jsp"
							class="btn btn4 btn-lg px-4 gap-3 for-hover">기업소개</a>
						<a href="${ root }subPart/aiDesign.jsp"
							class="btn btn4 btn-lg px-4 gap-3 for-hover">AI service</a>							
					  	<%
					  		}
					    %>	
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<%-- main input 부분 --%>
	<div id="inputconflex">
		<div class="inputcon">
		    <form action="${ root }mainPart/search.jsp">
			    <input type="text" name="search" required>
			    <label>여기에 검색해 보세요.</label>
			    <span></span>
			</form>
		</div>
	</div>

	<%-- 상품 리스트 --%>
	<h3 style="margin-top: 100px;  text-align: center;">공간에 변화를 불러올 준비가 되셨나요?</h3>
	<%
		List<Product> productList = productDAO.list(); 
		// String root = request.getContextPath();
	%>	
	<div class="container mb-5">
	    <div class="row gy-4 justify-content-center">
	        <%
	        for(int i = 0; i < productList.size(); i++ ) {
	            Product product = productList.get(i);      
	        %>		
	        <div class="col-md-6 col-xl-4 col-xxl-3">
	            <div class="card p-3">
	                <%-- 상품 이미지 영역 --%>
	                <div class="img-content d-flex align-items-center for-hover">
	                    <img src="<%= root %>/img?id=<%= product.getProduct_id() %>" class="w-100 p-2 list-main-img " style="width: 100%; height: 180px; object-fit: cover; border-radius: 30px;" />
	                </div>
	                <%-- 상품 컨텐츠 영역 --%>
	                <div class="content">
	                    <h3 class="text-center"><%= product.getProduct_name() %></h3>
	                    <p class="d-flex justify-content-end">
	                        <a href="<%= root %>/mainPart/product.jsp?id=<%= product.getProduct_id() %>" class="btn btn-outline-dark for-hover">자세히 보기</a>
	                    </p>
	                    <p class="text-start price"><%= product.getDescription() %></p>
	                </div>
	            </div>
	        </div>
	        <% 
	        }
	        %>
	    </div>
	</div>

	<%-- 쇼룸 부분. 베스트 5가 나올 곳. --%>
	<h3 style="text-align: center;">이번주 인기 집들이 best 3 👑</h3>
	<jsp:include page="/layout/centerAdvertisementTop5.jsp" />

	<%-- 인테리어 견적 소개 및 이동하는 부분 --%>
	<section id="sectionImg">
		<h2>견적이 궁금한가요?</h2>
		<h4>공간에 맞는 맞춤형 수리를 알아보세요!</h4>
		<div class="image-container">
			<div class="image-group">
			    <img alt="" src="${ root }mainPart/mainPartImg/main1.svg" class="for-hover">
			    <img alt="" src="${ root }mainPart/mainPartImg/main2.svg" class="for-hover">
			    <img alt="" src="${ root }mainPart/mainPartImg/main3.svg" class="for-hover">
			    <img alt="" src="${ root }mainPart/mainPartImg/main4.svg"s class="for-hover">
			    <img alt="" src="${ root }mainPart/mainPartImg/main5.svg" class="for-hover">
			</div>
			<div class="image-group">
			    <img alt="" src="${ root }mainPart/mainPartImg/main6.svg" class="for-hover">
			    <img alt="" src="${ root }mainPart/mainPartImg/main7.svg" class="for-hover">
			    <img alt="" src="${ root }mainPart/mainPartImg/main8.svg" class="for-hover">
			    <img alt="" src="${ root }mainPart/mainPartImg/main9.svg" class="for-hover">
			    <img alt="" src="${ root }mainPart/mainPartImg/main10.svg" class="for-hover">
			</div>
		</div>
	</section>

	<%-- 인테리어 A/S 부분 --%>
	<section class="image-section">
		<h2>A/S에 대해서 알아보세요</h2>
		<h4>보이지 않는 곳부터 세심한 디테일로</h4>
		<br> <br>
		<div class="image-container">
			<img alt="" src="mainPartImg/as2.png" style="max-width: 900px"  class="for-hover2">
		</div>
		<div id="asBtn">
			<a href="${ root }subPart/AS_service.jsp" class="btn btn-lg btn-outline-secondary for-hover">A/S 절차가 궁금하다면?</a>
		</div>
	</section>

	<link rel="stylesheet" href="./static/css/layout/footer.css">
	<jsp:include page="layout/footer.jsp" />
	
	<jsp:include page="layout/script.jsp" />
</body>
</html>



