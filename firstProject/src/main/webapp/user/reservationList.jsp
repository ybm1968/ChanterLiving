<%@page import="mini.dto.Reserve"%>
<%@page import="mini.dao.ReserveRepository"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ChanterLiving</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<!-- 다음번에 링크로 연결하기  -->
    <link rel="stylesheet" href="../static/css/list/complete.css">		<!-- csss는 list끼리 공유 -->
</head>
<body>
	<jsp:include page="/layout/header.jsp" />
<%-- 	<jsp:include page="/layout/centerText.jsp" /> --%>
		<div style="display:flex; justify-content: center;">
			<div class="container mt-4" style="max-width: 1200px">
		        <div class="row">
		        	<!-- 상품 정보 -->
			        <div class="product">
						<h2 style="text-align: center;">ChanterLiving Members - 예약 정보</h2>
			        </div>
			    </div>			
		        <div class="mb-3 row">
		        	<!-- 상품 정보 -->
			        <div class="product tablediv col-12">
						<table class="table2">
						    <tr class="text-center">
						       <th>아이디 (ID)</th>
						       <th>이름 (Name)</th>
						       <th>주소 (Address)</th>
						       <th>핸드폰 번호 (Phone)</th>
						       <th>평수 (Size)</th>
						       <th>상품 아이디(product_id)</th>
						       <th>방문 신청 날짜(date)</th>
							   <th>비고</th>
					      	</tr>   
							<% 
								String id = (String) session.getAttribute("loginId");
							
			   	    			ReserveRepository reserveDAO = new ReserveRepository();
			   	    
			   	    			
			   	    			
			   	    			List<Reserve> reserveList = reserveDAO.list();
			   	    			
			   	    			for(int i = 0; i < reserveList.size(); i++) {
			   	    				Reserve reserve = reserveList.get(i);
			   	    				if ( id.equals( reserve.getId() ) ) {
			    	    	%>
				    	    		<tr>
				    	    			<td><%= reserve.getId() %></td>
				    	    			<td><%= reserve.getName() %></td>
				    	    			<td><%= reserve.getProduct_address() %></td>
				    	    			<td><%= reserve.getPhone() %></td>
				    	    			<td><%= reserve.getSize() %></td>
				    	    			<td><%= reserve.getProduct_id() %></td>
				    	    			<td><%= reserve.getDate() %></td>
				    	    		</tr>	
			    	    	<%
			   	    				}
			    	    		}
			    	    	%>     	
						</table>
			        </div>
		        </div>
			</div>
		</div>

	
	<jsp:include page="/layout/footer.jsp" />
	<jsp:include page="/layout/script.jsp" />
</body>
</html>