<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ChanterLiving</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <!-- 다음번에 링크로 연결하기  -->
</head>
<body>
    <jsp:include page="/layout/header.jsp" />
    <jsp:include page="/layout/centerText.jsp" />
    
    <%
        String action = request.getParameter("action");
        if(action == null) {
            action = "";
        }
    %>
    
    <h1 style="text-align: center">
        <% 
            switch(action) {
                case "join":
                    out.print("가입이 완료되었습니다!");
                    break;
                case "update":
                    out.print("수정이 완료되었습니다!");
                    break;
                case "reserve":
                    out.print("예약이 완료되었습니다! <br> 디자인팀으로 정보가 전송되었습니다!");
                    break;
                case "delete":
                    out.print("삭제가 완료되었습니다! <br> 디자인팀으로 정보가 전송되었습니다!");
                    break;
                default:
                    out.print("알 수 없는 액션");
            }
        %>
    </h1>
    
    <div class="item" style="display: flex; justify-content: center;">            
        <a href="./products.jsp" class="btn btn-lg btn-danger">메인으로 가기</a>                
    </div>
	<link rel="stylesheet" href="../static/css/layout/footer.css">
    <jsp:include page="/layout/footer.jsp" />
    <jsp:include page="/layout/script.jsp" />
</body>
</html>