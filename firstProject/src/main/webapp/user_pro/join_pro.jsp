<%@page import="mini.dao.UserRepository"%>
<%@page import="mini.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   	<!-- update.jsp에서 정보 받아와서 로직 처리 후 -->
   	
	<!-- 서버로 전송될 식별 데이터 이름은 각각-->
	
	<!-- id pw repw name address phone 입니다. -->
    
    <!-- 그 후로 user/complete2.jsp로 보내주세요. -->
<%
	User user = new User();

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String repw = request.getParameter("repw");
	String name = request.getParameter("name");
	String address = request.getParameter("address");
	Integer phone = Integer.parseInt(request.getParameter("phone"));
	
	user.setId(id);
	user.setPassword(pw);
	user.setName(name);
	user.setAddress(address);
	user.setPhone(phone);
	 
	UserRepository userDAO = new UserRepository();
	int result = userDAO.insert(user);
	
	if(result > 0) {
		response.sendRedirect("../static/complete/complete.jsp?action=join");
	}else{
%>
<script>
	alert('회원가입 실패 관리자에게 문의해주세요');
</script>
<%
		response.sendRedirect("../user/join.jsp");
	}	
%>
