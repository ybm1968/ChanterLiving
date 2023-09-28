<%@page import="mini.dto.User"%>
<%@page import="mini.dao.UserRepository"%>
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
    <link rel="stylesheet" href="../static/css/list/complete.css">
</head>
<body>
	<jsp:include page="/layout/header.jsp" />
<%-- 	<jsp:include page="/layout/centerText.jsp" /> --%>
		<div style="display:flex; justify-content: center;">
			<div class="container mt-4" style="max-width: 1000px">
		        <div class="row">
		        	<!-- 상품 정보 -->
			        <div class="product">
						<h2 style="text-align: center;">ChanterLiving Members - 회원 정보</h2>
			        </div>
			    </div>			
		        <div class="mb-3 row">
		        	<!-- 상품 정보 -->
			        <div class="product tablediv">
						<table>
						    <tr class="text-center">
						       <th>아이디 (ID)</th>
						       <th>이름 (Name)</th>
						       <th>주소 (Address)</th>
						       <th>핸드폰 번호 (Phone)</th>
							   <th>비고</th>
					      	</tr>
			   	    		<%
			   	    			UserRepository userDAO = new UserRepository();
			   	    			List<User> userList = userDAO.list();
			   	    			
			   	    			for(int i = 0; i < userList.size(); i++){
			   	    				User user = userList.get(i);
			    	    	%>
		    	    		<tr>
		    	    			<td><%= user.getId() %></td>
		    	    			<td><%= user.getName() %></td>
		    	    			<td><%= user.getAddress() %></td>
		    	    			<td><%= user.getPhone() %></td>
								<td class="text-center"><a href="../user_pro/userdelete_pro.jsp?id=<%=user.getId() %>" class="btn btn-outline-light">유저 삭제</a></td>
		    	    		</tr>	
			    	    	<%
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