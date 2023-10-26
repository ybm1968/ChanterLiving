<%@page import="java.util.List"%>
<%@page import="mini.dto.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="productDAO" class="mini.dao.ProductRepository" />
<%
	String loginId = (String) session.getAttribute("loginId");
	String search = request.getParameter("search");
	List<Product> productList = productDAO.searchList(search);  
	String root = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ChanterLiving</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<!-- 다음번에 링크로 연결하기  -->
	<link rel="stylesheet" href="../static/css/mainPart/search.css">
</head>
<body>
	<jsp:include page="/layout/header.jsp" />
	<%-- 메인 동영상 재생 부분 --%>
	<div class="jb-box">
		<video muted autoplay loop>
			<source src="../static/video/mainBackVideo4.mp4" type="video/mp4">
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
						<a href="../subPart/introduction.jsp"
							class="btn btn4 btn-lg px-4 gap-3">기업소개</a>
						<a href="../subPart/aiDesign.jsp"
							class="btn btn4 btn-lg px-4 gap-3">AI service</a>
					  	<%
					  		}else if(loginId.equals("admin")){
					  	%>	
						<!-- 관리자일 때 -->
						<a href="add.jsp" class="btn btn2 btn-lg px-4 gap-3">상품 등록</a> 
						<a
							href="../list/reservationList.jsp"
							class="btn btn3 btn-lg px-4 gap-3">예약리스트</a>
						<a
							href="../list/customerList.jsp"
							class="btn btn4 btn-lg px-4 gap-3">고객리스트</a>
					    <%
					  	
					  		}else{	
					  	%>
						<!-- 유저일 때 -->
						<a href="../subPart/expectedEstimate.jsp"
							class="btn btn1 btn-lg px-4 gap-3">예상 견적보기</a> 
						<a href="../subPart/introduction.jsp"
							class="btn btn4 btn-lg px-4 gap-3">기업소개</a>
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
		    <form action="../mainPart/search.jsp">
			    <input type="text" name="search" required>
			    <label>여기에 검색해 보세요.</label>
			    <span></span>
			</form>
		</div>
	</div>

	<%  
	if(productList.isEmpty()){
	%>
	<h3 style="margin-top: 100px; text-align: center;"> 검색 결과가 없습니다.</h3>
	<div style="margin-bottom: 250px"></div>
	<%	
	}else{
	%>
	
	<%-- 상품 리스트 --%>
	<h3 style="margin-top: 100px; text-align: center;"><%= search %>의 검색 결과입니다</h3>

	<div class="container mb-5">
	    <div class="row gy-4 justify-content-center">
		    <%		
			    for(int i = 0; i < productList.size(); i++ ) {
		    	    Product searchlist = productList.get(i);   
		    %>    
		    <div class="col-md-6 col-xl-4 col-xxl-3 ">
				<div class="p-3">
			    	<%-- 상품 이미지 영역 --%>
			        <div class="img-content d-flex align-items-center">
			        	<img src="<%= root %>/img?id=<%= searchlist.getProduct_id() %>" class="w-100 p-2 list-main-img" style="width: 100%; height: 180px; object-fit: cover; border-radius: 30px;" />
			        </div>
			        <%-- 상품 컨텐츠 영역 --%>
			        <div class="content">
			        	<h3 class="text-center"><%= searchlist.getProduct_name() %></h3>
			        	<p class="d-flex justify-content-end">
			            	<a href="./product.jsp?id=<%= searchlist.getProduct_id() %>" class="btn btn2">상세정보</a>
			            </p>
			            <p class="text-start price"><%= searchlist.getDescription() %></p>
			        </div>
				</div>
			</div>
		<%
			}}
		%>
	    </div>
	</div>

	<%-- 쇼룸 부분. 베스트 5가 나올 곳. --%>
	<h3 style="text-align: center;">이번주 인기 집들이 best 3 👑
</h3>
	<jsp:include page="/layout/centerAdvertisementTop5.jsp" />

    
	<jsp:include page="/layout/footer.jsp" />
	<jsp:include page="/layout/script.jsp" />
</body>
</html>