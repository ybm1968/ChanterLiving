<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
 
.howtothispage{
    position: absolute;
    top: 53%;
    left: 66%;
    transform: translate(-50%, -50%);
    background-color: gray;
    border-radius: 20px; 
    padding: 60px 30px;
   	width: 430px;
   	height: 500px;
}

.product {
	background-color: #174c6b;
	margin-top: 3vh;
    box-shadow: 5px 10px 30px 10px black;
    transition: transform 0.3s ease;  
    color: white;
}
#AiText > p {
	font-size: 18px;
}
</style>
<body style="background-color: #5e97d1;">
    <jsp:include page="/layout/header.jsp" />
    
	<jsp:include page="/subPart/forAiServiceBack.jsp" />
	<jsp:include page="/subPart/findDesign.html" />
	<div class="howtothispage product ">
		<h2>ChanterLiving AI</h2>
		<hr>
		<div id="AiText">
			<p>ChanterLiving는 인공지능을 활용한 고객님의 인테리어 디자인을 추천해 드립니다.</p>
			<p> - 아래와 같은 질문을 통해 서비스를 이용해보세요.</p>
			<p> - 인테리어 꿀팁에 대해서 알고싶어요.</p>
			<p> - 인테리어 견적을 알고싶어요.</p>
			<p> - 시공 문의를 어떻게 하는지 알고싶어요.</p>
			<p> - 예약에 대해서 알고 싶어요.</p>
		</div>
	</div>
	<div style="height: 100vh"></div>
	<jsp:include page="/layout/footer.jsp" />
</body>
</html>