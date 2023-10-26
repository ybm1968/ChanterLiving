<%@page import="mini.dto.User"%>
<%@page import="mini.dao.UserRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");	

	UserRepository userDAO = new UserRepository();
	User user = new User();
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw"); 
	String name = request.getParameter("name"); 
	String address = request.getParameter("address"); 
	int phone = Integer.parseInt(request.getParameter("phone")); 
	
	user.setId(id);
	user.setPassword(pw);
	user.setName(name);
	user.setAddress(address);
	user.setPhone(phone);
	
	int result = userDAO.update(user);
	
	if ( result > 0 ){
		response.sendRedirect("../mainPart/complete.jsp?action=update"); 
	}
	else {
		response.sendRedirect("update.jsp");
	}

%>