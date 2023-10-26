<%@page import="java.net.URLEncoder"%>
<%@page import="mini.dto.User"%>
<%@page import="mini.dao.UserRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<!-- 로그인에서 정보 받아와서 로직 처리 후 -->
	<!-- 서버로 전송될 식별 데이터 이름은 아이디는 id이고 비밀번호는 pw이다. -->
	
	
	<!-- products로 보내기 -->
<%
   String id = request.getParameter("id");
   String pw = request.getParameter("pw");
   String checkId = request.getParameter("checkId");
  
   
   
   System.out.println("checkId : " + checkId);
   String root = request.getContextPath();
   
   if( checkId != null && checkId.equals("on") ) {
	   Cookie cookie_id = new Cookie("id", URLEncoder.encode(id, "UTF-8"));
	   Cookie cookie_checkId = new Cookie("check", URLEncoder.encode(checkId, "UTF-8"));
	   
	   cookie_id.setPath("/");
	   cookie_checkId.setPath("/");
	   
	   cookie_id.setMaxAge(24 * 60 * 60);
	   cookie_checkId.setMaxAge(24 * 60 * 60);
	    
	   response.addCookie(cookie_id);
	   response.addCookie(cookie_checkId);
	   System.out.println("아이디를 쿠키에 저장했습니다<br>");
   }
   else {
	   Cookie cookie_id = new Cookie("id", "");
	   Cookie cookie_checkId = new Cookie("check", "");
	   cookie_id.setPath("/");
	   cookie_checkId.setPath("/");
	   cookie_id.setMaxAge(0);
	   cookie_checkId.setMaxAge(0);
	   response.addCookie(cookie_id);
	   response.addCookie(cookie_checkId);
	   System.out.println("아이디를 쿠키에 해제했습니다<br>");
   }
         
   UserRepository userDAO = new UserRepository();
   User loginUser = userDAO.login(id, pw);
         
   if ( loginUser == null ){
%>
<script>
   alert("아이디/비밀번호를 확인하세요");
    location.href= "../user/login.jsp";
</script>   
<%
      return;
   }
   

   session.setAttribute("loginId", id);
   

         
   response.sendRedirect("../mainPart/products.jsp");

  
%>