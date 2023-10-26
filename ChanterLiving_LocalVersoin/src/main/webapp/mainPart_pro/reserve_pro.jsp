<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="mini.dto.Product"%>
<%@page import="mini.dao.ProductRepository"%>
<%@page import="mini.dto.Reserve"%>
<%@page import="mini.dao.ReserveRepository"%>
<%@page import="mini.dto.User"%>
<%@page import="mini.dao.UserRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
<%
	request.setCharacterEncoding("UTF-8");	

	Date now = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyMMddHHmmss");
	
	ReserveRepository reserveDAO = new ReserveRepository();
	Reserve reserve = new Reserve();
	
	String reserve_num = "P_" + sdf.format(now);
	String Id = request.getParameter("id");
	String product_id = request.getParameter("productId");
	String date = request.getParameter("date");
	String product_address = request.getParameter("address");
	int size = (request.getParameter("size") == "" ) ? 0 : Integer.parseInt( request.getParameter("size") );
	String name = request.getParameter("name");
	int phone = Integer.parseInt(request.getParameter("phone"));
	

	reserve.setReserve_num(reserve_num);		
	reserve.setId(Id);	
	reserve.setProduct_id(product_id);		
	reserve.setDate(date);
	reserve.setProduct_address(product_address);
	reserve.setSize(size);
	reserve.setName(name);
	reserve.setPhone(phone);
	
	int result = reserveDAO.insert(reserve);
	
	if ( result > 0 ){
		response.sendRedirect("../mainPart/complete.jsp?action=reserve"); 
	}
	else {
		response.sendRedirect("../mainPart/reserve.jsp");
	}
%>