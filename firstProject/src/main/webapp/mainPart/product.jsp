<%@page import="mini.dto.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="productDAO" class="mini.dao.ProductRepository" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ChanterLiving</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <!-- 다음번에 링크로 연결하기  -->
    <link rel="stylesheet" href="../static/css/mainPart/product.css">
</head>
<body>	
    <jsp:include page="/layout/header.jsp" />
    
    <!-- 상품 정보 영역 -->
    <div class="main-img-box">
        <%
            String root = request.getContextPath();
            String productId = request.getParameter("id");
            Product product = productDAO.getProductById(productId);
            // 로그인을 위한 로직
            String loginId = (String) session.getAttribute("loginId");
        %>
        <!-- 배경 동영상 영역 --> 
<!--         <div class="jb-box"> -->
<!--             <video muted autoplay loop> -->
<!--                 <source src="../static/video/mainVideo.mp4" type="video/mp4"> -->
<!--             </video> -->
<!--         </div> -->
    </div>
    
	        <!-- 상품 이미지 -->
                <div id="imgfrontdiv">
                    <img id="imgfront" src="<%= root %>/img?id=<%= product.getProduct_id() %>" />
                </div>
                
	<div class="container" style="max-width: 1000px">
	    <div class="row">
            <div class="mb-3 row">
            </div>
	        <!-- 상품 정보 -->
	        <div class="product">
	            <div class="inputTogether row">
	                <h2 class="tableh3" style="margin-top: 9px"><%= product.getProduct_name() %></h2>
	            </div>
	        </div>
	        <!-- 상품 설명 -->
	        <div class="product">
	            <div class="inputTogether row">
	                <h3>상세설명</h3> <br><hr><br>
	                <p><%= product.getDescription() %></p>
	            </div>
	        </div>
      	</div>
        <!-- 추가 정보 -->
		<div class="row justify-content-between">
	        <div class="col-8 product2">
	            <h5 style="margin-top: 8px">당신의 공간에 가치를 더하세요</h5>
	        </div>
	        <div class="col-1"></div>
	        <!-- 예약/수정/삭제 버튼 -->
   			<div class="col-3 product2">  <!-- ml-auto 클래스 추가 -->
	            <div class="inputTogether">
	                <form name="addForm" action="./reserve.jsp" method="post">
	                    <input type="hidden" name="loginId" value="<%= loginId %>" /> 
                        <div class="btn-box d-flex justify-content-center">
                            <input type="hidden" name="productId" value="<%= productId %>">
	                        <!-- 비회원일 때 -->
	                        <% if(loginId == null || loginId.equals("")){ %>
	                            <a href="../user/login.jsp" class="btn btn-outline-light">로그인을 진행해 주세요.</a>
	                        <!-- 관리자일 때 -->
	                        <%
	                            } else if(loginId.equals("admin")){
	                        %>
	                            <a href="../mainPart/update.jsp?id=<%=product.getProduct_id() %>" class="btn btn-outline-light">상품 수정</a>
	                            <a href="../mainPart_pro/del_pro.jsp?id=<%= productId %>" class="btn btn-outline-light">상품 삭제</a>
	                        <!-- 유저일 때 -->
	                        <%
	                            } else {    
	                        %>
	                            <button type="submit" class="btn btn-outline-light">예약 하기</button>
	                        <%
	                            }
	                        %>
	                    </div>
	                </form>
	            </div>
	        </div>
        	<div class="product">
            	<div class="inputTogether row">
                	<h3>왜 ChanterLiving 인가요?</h3> <br><hr><br>
                	<img src="../static/img/bottom.png" style="border-radius: 35px"/>
            	</div>
	        </div>
	        <!-- 인테리어 비교 견적 설명 -->
	        <div class="product">
	            <div class="mb-3 row">
	                <h3 style="text-align: center;">예약 안내 사항
	                </h3>
	                <br><hr><br>
	                <p>견적신청 시 고객님께 추천인테리어업체 정보[업체명/연락처]를
	                    전달하여 이를 통해, 직접 상담을 요청하시거나 업체에서
	                    방문견적일정 협의를 위한 전화상담이 진행됩니다.
	                    방문견적 또는 전화상담을 통해 인테리어 업체별 디자인 및 견적
	                    서비스를 받아보시고 계약을 원하는 업체와 직접 인테리어 계약을
	                    진행하시면 됩니다.
	                    인테리어중개 서비스는 무료이며 고객님께 맞는 인테리어 업체를
	                    직접 선택하실 수 있습니다.
	                    (주)ChanterLiving에서 고객 중심의 인테리어 비교 견적 서비스를
	                    이용해 보시길 바랍니다.
	                    (주)ChanterLiving에 문의시 비교/선택 할 수 있도록 실력있고
	                    자체검증이 된 파트너스사들이 합리적인 견적과 포트폴리오를
	                    제공합니다. (주)ChanterLiving는 고객님이 인테리어 공사를 보다
	                    쉽게 접근하여 진행할 수 있도록 연결해 드리는 역할을 하는
	                    회사입니다.
	                    * 견적과 디자인을 면밀히 살펴보시고 결정하신 후 진행을 하시면 됩니다. 공사견적이 현저하게 저렴하다면
	                    유심히 살펴보시기 바랍니다. (견적신청은 일체의 비용이 발생하지 않습니다.)
	                </p>
	            </div>
	        </div>
        </div>
	</div>
<!-- 	        <div class="product" > -->
<!-- 	            <div class="mb-3 row">	       -->
<%-- 					쇼룸 부분. 베스트 5가 나올 곳. --%>
<!-- 					<h3 style="text-align: center;">자재 선택부터 견적 상담까지 한 번에 쇼룸에서.</h3> -->
<!-- 	                <br><hr><br> -->
<!-- 	                <div style="margin: 0"> -->
<%-- 						<%@ include file="/layout/centerAdvertisementTop5.jsp" %>					 --%>
<!-- 	                </div> -->
<!-- 		        </div> -->
<!-- 			</div> -->
	

    
    <jsp:include page="/layout/footer.jsp" />
    <jsp:include page="/layout/script.jsp" />
</body>
</html>
