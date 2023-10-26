<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ChanterLiving</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<!-- 다음번에 링크로 연결하  -->
    <link rel="stylesheet" href="../static/css/user/join.css">
<script>
	function checkJoin(){
		let form = document.joinForm
		if( form.id.value.length < 5 || form.id.value.length > 20){
			alert('아이디는 5~20자 이내로 입력 가능합니다.')
			form.id.select()
			return false
		}

		if( form.pw.value.length <4 || form.pw.value.length > 20){
			alert('비밀번호는 4~20자 이내로 입력 가능합니다.')
			form.pw.select()
			return false
		}
		if( form.pw.value != form.repw.value ){
			alert('비밀번호가 일치하지 않습니다.')
			form.repw.select()
			return false
		}
		
		if( !isNaN( form.name.value.substr(0, 1) ) ){
			alert('이름은 숫자로 시작할 수 없습니다')
			form.name.select()
			return false
		}
		if( form.name.value.length > 10 ){
			alert('이름은 10자 이내로 입력 가능합니다.')
			form.name.select()
			return false
		}
		
		if( !isNaN( form.address.value.substr(0, 1) ) ){
			alert('주소는 숫자로 시작할 수 없습니다')
			form.address.select()
			return false
		}
		if( form.address.value.length > 50 ){
			alert('주소는 50자 이내로 입력 가능합니다.')
			form.name.select()
			return false
		}
		return true
		
	}
		
	function checkNumber(){
		console.log( event.keyCode )
	
		if( !(event.keyCode >= 48 && event.keyCode <= 57) ){
			alert('숫자만 입력 가능합니다.')
			event.returnValue = false
			form.age.value = ''
		}
	}
</script>	
</head> 
<body>		
	
	<jsp:include page="/layout/header.jsp" />
	<jsp:include page="/layout/centerText.jsp" />

	<!-- 배경 동영상 -->
	<div class="jb-box">
	    <video id="myVideo" muted autoplay loop>
	        <source src="../static/video/joinBackVideo.mp4" type="video/mp4">
	    </video>
	</div>
	<!-- 회원 가입 영역 -->
	<div class="container mb-5" style="max-width: 1000px">
		<form action="../user_pro/join_pro.jsp" onsubmit="return checkJoin()" name="joinForm" method="post" >				<!-- join_pro.jsp로 post방식으로 보냄 -->
			<div class="product">
				<div class="inputTogether mb-3 row">
					<label id="inputLabel" class="col-md-2" id="">아이디</label>
					<input id="inputText" type="text" class="col-md-9" name="id" placeholder="아이디" required autofocus>
				</div>
			</div>
			<div class="product">				
				<div class="inputTogether mb-3 row">
					<label id="inputLabel" class="col-md-2" id="">비밀번호</label>
					<input id="inputText" type="password" class="col-md-9" name="pw" placeholder="비밀번호" required>
				</div>
				<div class="inputTogether mb-3 row">
					<label id="inputLabel" class="col-md-2" id="">비밀번호 확인</label>
					<input id="inputText" type="password" class="col-md-9" name="repw" placeholder="비밀번호 확인" required>
				</div>
			</div>
			<div class="product">
				<div class="inputTogether mb-3 row">
					<label id="inputLabel" class="col-md-2" id="">성함</label>
					<input id="inputText" type="text" class="col-md-9" name="name" placeholder="이름" required>
				</div>
			</div>
			<div class="product">
				<div class="inputTogether mb-3 row">
					<label id="inputLabel" class="col-md-2" id="">집 주소</label>
					<input id="inputText" type="text" class="col-md-9" name="address" placeholder="주소" required>
				</div>
			</div>
			<div class="product">
				<div class="inputTogether mb-3 row">
					<label id="inputLabel" class="col-md-2" id="">연락처</label>
					<input id="inputText" type="text" class="col-md-9" name="phone" placeholder="핸드폰 번호" required onkeypress="checkNumber()">
				</div>
			</div>
				<div class="d-flex justify-content-center mt-5 mb-5">
					<a href="javascript: history.back()" class="btn btn-lg btn-outline-light mx-3">가입 취소</a>
					<input type="submit" class="btn btn-lg btn-outline-light mx-3" value="가입 하기" />
				</div>
		</form>
	</div>


	

	<jsp:include page="/layout/footer.jsp" />
	<jsp:include page="/layout/script.jsp" />
</body>
</html>