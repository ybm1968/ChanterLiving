   	<!-- add.jsp에서 정보 받아와서 로직 처리 후 -->
   	
	<!-- 서버로 전송될 식별 데이터 이름은 각각-->
	
	<!-- product_id name description img 입니다. -->
    
    <!-- 그 후로 mainPart/complete.jsp로 보내주세요. -->
	
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
 
	// [NEW] - 파일 업로드 추가 
	String path = "C:\\HHJ\\UPLOAD";
	
	DiskFileUpload upload = new DiskFileUpload();
	
	upload.setSizeMax(10*1000*1000); 		// 10MB - 파일 최대 크기
	upload.setSizeThreshold( 4 * 1024 );	// 4MB	- 메모리상의 최대 크기
	upload.setRepositoryPath(path);			// 임시 저장 경로
	
	List<FileItem> items = upload.parseRequest(request);
	Iterator params = items.iterator();

	Product product = new Product();
		String Img = "";
	while( params.hasNext() ) {
		FileItem item = (FileItem) params.next();
		
		// FileItem
		// .getFieldName()		: 요청 파라미터 이름 - productId
		// .getString()			: 요청 파라미터 값   - P1001
		
		String value = item.getString("utf-8");			// P1001
		// 일반 데이터
		if( item.isFormField() ) {
			switch(item.getFieldName()) {
				case "product_id" 		: product.setProduct_id( value );  break;
				case "product_name"     : product.setProduct_name( value );  break;
				case "description" 		: product.setDescription( value );  break;
				
			}
		}
		// 파일 데이터
		else {
			String ImgName = item.getName();
			
			if( item == null || ImgName == null || ImgName == "" ) continue;	// 이미지 없이 업로드한 경우 null 체크
			
			File fileObj = new File(path + "/" + ImgName);
			item.write(fileObj);			// 파일 저장
			Img = fileObj.getPath();		
			product.setImg(Img);			// DB 에 추가할 파일 경로(file 변수) 지정	- "E:/TJE/UPLOAD/강아지.png"
		}
	}


	int result = productDAO.insert(product);		// 상품 데이터 등록
	String root = request.getContextPath();	 
%>	
	<script>
	alert('상품이 등록되었습니다.')
	location.href= "../mainPart/products.jsp";
    </script>





