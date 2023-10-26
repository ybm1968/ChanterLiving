<%@page import="mini.dao.ReserveRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String reserve_num = request.getParameter("id");

	ReserveRepository ReserveDAO = new ReserveRepository();

	int result = ReserveDAO.delete(reserve_num);
		
	if( result > 0 ) {
%>
<script>
	alert('예약을 삭제하였습니다.')
	location.href="../list/reservationList.jsp";
</script>
<%
	}else {
%>
<script>
	alert('예약삭제에 실패하였습니다.')
	location.href="../list/reservationList.jsp";
</script>
<%
	}
%>