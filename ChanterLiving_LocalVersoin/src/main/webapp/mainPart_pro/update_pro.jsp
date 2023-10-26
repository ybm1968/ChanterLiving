<%@page import="java.util.UUID"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%> 
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="mini.dto.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="productDAO" class="mini.dao.ProductRepository" />
<%
   request.setCharacterEncoding("UTF-8");
   
   String path = "C:\\HHJ\\UPLOAD";
   
   DiskFileUpload upload = new DiskFileUpload();
   
   upload.setSizeMax(10*1000*1000);
   upload.setSizeThreshold( 4 * 1024 );
   upload.setRepositoryPath(path);
   
   List<FileItem> items = upload.parseRequest(request);
   Iterator params = items.iterator();
   
   Product product = new Product();
   String Img = "";
   boolean newImg = false;
   while( params.hasNext() ) {
	   FileItem item = (FileItem) params.next();
	   
	   String value = item.getString("utf-8");	
	   
		// 일반 데이터
		if( item.isFormField() ) {
			switch(item.getFieldName()) {
				case "product_id" 		: product.setProduct_id( value );  break;
				case "product_name"     : product.setProduct_name( value );  break;
				case "Img" 		        : product.setImg( value );  break;
				case "description" 		: product.setDescription( value );  break;
			}
		} else {
			// 파일 데이터
			String ImgName = item.getName();
			
			if( item == null || ImgName == null || ImgName == "" ) continue;	// 이미지 없이 업로드한 경우 null 체크
			
			newImg = true;
			File fileObj = new File(path + "/" + ImgName);
			item.write(fileObj);			// 파일 저장
			Img = fileObj.getPath();		
			product.setImg(Img);			// DB 에 추가할 파일 경로(file 변수) 지정	- "E:/TJE/UPLOAD/강아지.png"
		}

		System.out.println(product.toString());
		
   }
   Product oldProduct = productDAO.getProductById(product.getProduct_id());
	// 새로운 이미지 업로드한 경우
	if( newImg ) {
		// 기존 파일 삭제
		String oldImgPath = oldProduct.getImg();
		
		// oldFilePath 파일 경로 null 체크
		if( oldImgPath == null ) oldImgPath = "";
		
		// 파일 삭제
		File oldImg = new File(oldImgPath);
			
		// 파일 존재여부 확인
		if( oldImg.exists() ) {
			// delete()
			// - 파일 삭제 성공 --> true
			// - 파일 삭제 실패 --> false
			// * 하위 경로에 파일이 존재하면 삭제가 되지 않는다.
			if( oldImg.delete() ) {
				System.out.println("파일 삭제 성공!!!");
			}
			else {
				System.err.println("파일 삭제 실패!!!");
			}
		} else {
			System.err.println("파일이 존재하지 않습니다!!!");
		}
	} 
	
	// 새로운 이미지를 업로드하지 않은 경우
	else {
		// 파일 경로를 기존 파일로 유지 
		product.setImg( oldProduct.getImg() );
	}
	
	int result = productDAO.update(product);		// 상품 데이터 수정
	String productId = product.getProduct_id();
	
	String root = request.getContextPath();	 
	
	 System.out.println("Root Context Path : "+root);
	   if( result > 0 ) {
	       // 상품 수정 성공시 alert 창 띄우고 상품 목록 페이지로 이동
	       out.println("<script>");
	       out.println("alert('상품이 수정되었습니다.');");
	       out.println("location.href= '../mainPart/products.jsp';");
	       out.println("</script>");
	   } else {
	       response.sendRedirect(root + "/mainPart/update.jsp");    // 상품 수정 화면으로 이동
	   }
	%>