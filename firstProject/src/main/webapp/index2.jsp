<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JSON & XML</title>

</head>
<body>   
	<% String root = request.getContextPath(); %>
	
	<jsp:include page="/layout/header.jsp" />
	<div class="px-4 py-5 my-5 text-center">
		<h1 class="display-5 fw-bold text-body-emphasis">Chat GPT - Open AI API</h1>
		<div class="col-lg-6 mx-auto">
			<p class="lead mb-4">Open AI API 사용하기</p>
			<div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
			</div>
		</div>
	</div>
	<!-- 입력 -->
	<div class="container">
		<div class="row">
			<div class="col">
				<form action="" method="post">
				    <div class="form-floating">
				      <input type="text" class="form-control" id="input-msg" name="msg" placeholder="무엇이 궁금한가요?" autofocus>
				      <label for="input-msg">채팅 메시지</label>
				    </div>
				    
				    <a href="javascript:;" class="btn btn-outline-primary btn-lg px-4 w-100" id="btn">요청하기</a>
				</form>
				
				<hr>

				<div class="row">
					<div class="col">
						<textarea name="" id="result" rows="20" class="form-control" placeholder="응답 결과"></textarea>
					</div>
					<div class="col">
						<textarea name="" id="content" rows="20" class="form-control" placeholder="내용"></textarea>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="/layout/footer.jsp" />
	<jsp:include page="/layout/script.jsp" />
	
</body>
</html>
























