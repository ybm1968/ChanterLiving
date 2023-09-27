<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.jb-box {
	width: 100%;
	overflow: hidden;
	margin: 0px auto;
	position: absolute;
	position: fixed;
	z-index: -9;
	top: 0;
}

video {
	width: 100%;
	height: calc(100vh + 80px);
	object-fit: cover;
	
}
</style>
<body>
	<!-- 배경 동영상 -->
 	<div class="jb-box">
	    <video id="myVideo" muted autoplay loop>
	        <source src="../static/video/aiServiceBack2.mp4" type="video/mp4">
	    </video>
	</div>
</body>
</html>