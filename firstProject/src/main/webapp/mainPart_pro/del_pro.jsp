<%@page import="java.io.File"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%> 
<%@page import="mini.dto.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="productDAO" class="mini.dao.ProductRepository" />
<%       
    // request.setCharacterEncoding("UTF-8");

    String product_id = request.getParameter("id");
    
    // 파일 경로 조회
    Product product = productDAO.getProductById(product_id);

    String filePath = product.getImg();
    
    // 파일 존재여부 확인
    if( filePath != null ) {
        File file = new File(filePath);
        if( file.delete() ) {
            System.out.println("파일 삭제 성공!!!");
        }
        else {
            System.err.println("파일 삭제 실패!!!");
        }
    } else {
        System.err.println("파일이 존재하지 않습니다!!!");
    }
    
    // 데이터 삭제
    int result = productDAO.delete(product_id); // 상품 데이터 삭제
    String root = request.getContextPath(); 
%>
<script>
    <% if(result > 0) { %>  // 상품 삭제가 성공적으로 이루어졌는지 확인
        alert('상품이 삭제되었습니다.');
        location.href= "../mainPart/products.jsp";
    <% } else { %>  // 상품 삭제가 실패했는지 확인
        alert('상품 삭제 실패.');
        // 실패시 원하는 페이지로 리다이렉션 또는 추가 작업을 수행할 수 있습니다.
    <% } %>
</script>