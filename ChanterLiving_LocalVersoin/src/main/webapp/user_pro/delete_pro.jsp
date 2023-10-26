<%@page import="mini.dao.UserRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");	
	String id = (String) session.getAttribute("loginId");

	UserRepository UserDAO = new UserRepository();

	int result = UserDAO.delete(id);
	
	if( result > 0 ) {
		response.sendRedirect("../mainPart/complete.jsp?action=delete");
		session.invalidate();
	}
	else {
		response.sendRedirect("update.jsp");
	}
	
%>