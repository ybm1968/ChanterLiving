<%@page import="mini.dao.UserRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userId = request.getParameter("id");

	UserRepository UserDAO = new UserRepository();

	int result = UserDAO.delete(userId);
		
	if( result > 0 ) {
%>
<script>
	alert('회원을 삭제하였습니다.')
	location.href="../list/customerList.jsp";
</script>
<%
	}else {
%>
<script>
	alert('회원삭제에 실패하였습니다.')
	location.href="../list/customerList.jsp";
</script>
<%
	}
%>