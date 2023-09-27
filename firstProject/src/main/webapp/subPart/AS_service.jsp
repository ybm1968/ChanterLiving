<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>A/S service</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<!-- 다음번에 링크로 연결하기  -->
    <link rel="stylsheet" href="../static/css/subPart/introdution.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../static/css/subPart/AS_service.css">
</head>
<body>
   <jsp:include page="/layout/header.jsp" />
  
   <!-- 배경 동영상 영역 --> 
	<div class="outerClass">
        <!-- 배경 동영상 영역1 --> 
        <div class="innerClass">
	       <video muted autoplay loop>
	           <source src="../static/video/asVideo2.mp4" type="video/mp4">
	       </video>
        </div>
	</div>
	<!-- 배경 동영상 위로 지나가는 텍스트 -->
	<div class="scrollText textDeco" style="width: 600px">
		<jsp:include page="/layout/centerText.jsp" />
	</div>
	<div class="scrollText textDeco text-start" style="margin-top: 1000px; margin-left: 300px; width: 600px;">
		<h1 style="text-shadow: 1px 1px black;"> ChanterLiving와 함께하는 순간, <br> 보이지 않는 곳부터 세심한 디테일로 </h1>
		<p class="text-start" style="text-shadow: 1px 1px black;">ChanterLiving의 책임감</p>
	</div>
	   		
   
	<div class="container" style="max-width: 1000px">
	    <div class="row">
            <div class="mb-3 row">
            </div>
	        <!-- 상품 정보 -->
	        <div class="product">
				<div>
					<h3 style="text-align: start;"> 1. 품질 보증 기간 </h3>
					<hr>
					<p>
						2023년 9월 1일부터 당사의 제품을 구매하여 시공 및 설치를 완료한 리바트 멤버스(H.Point와 리바트 통합회원) 고객은
						제품의 인도일(설치일)로부터 3년간 무상 A/S의 혜택을 받으실 수 있습니다.
						품질보증은 정상적인 사용 범위에서 발생한 품질, 성능 등의 하자에 대한 무상 수리를 의미하며, 제품의 인도일(설치, 시공)을 기준으로 합니다.
						'리바트 멤버스(H.Point와 리바트 통합회원)’의 경우 최대 3년, 일반 고객은 최대 1년의 품질 보증 기간이 적용됩니다.
						<br><br>* 제품의 인도일(설치, 시공)까지 리바트 멤버스 가입을 완료 하셔야 3년 무상 A/S 적용 되며, 리바트몰 '마이페이지'에서 리바트멤버스 적용여부를 확인부탁드립니다.
						
						당사 브랜드 라벨이 부착되지 않는 수입 브랜드 상품*, 타 브랜드의 상품성 기기류*, 착석감을 위한 내장재(구스, 양모) 및 쿠션*은 1년 품질 보증을 제공합니다.
						<br><br>* 수입 브랜드 상품: 세계가구관 제품, 윌리엄스소노마, 웨스트엘름, 포터리반, 포터리반키즈, 죠르제띠 등
						
						<br><br>* 상품성 기기류: 후드, 쿡탑, 인덕션, 수전, 악세서리류 등
						
						<br><br>* 내장재 및 쿠션: 소파류
						
						전시품, 상설전시장 제품은 6개월의 품질보증을 제공하며 판매 시 존재한 하자는 무상수리가 불가합니다.
						중고구매상품, 매매로 인해 소유 주체가 변경된 시공 상품은 품질보증 대상에서 제외됩니다.
					</p>
				</div>
			</div>
		</div>
    </div>
	<div class="container" style="max-width: 1000px">
	    <div class="row">
            <div class="mb-3 row">
            </div>
	        <!-- 상품 정보 -->
	        <div class="product">
	        	<h3 style="text-align: start;"> 2. A/S 절차 </h3>
	        	<hr>
	        	<div style="background-color: white; border-radius: 20px">
	        		<img style="width:100%;" src="../static/img/AS_service_process.png" alt="AS flow"/>
	        	</div>
	        </div>
	    </div>
	</div>  

	<div class="container" style="max-width: 1000px">
	    <div class="row">
            <div class="mb-3 row">
            </div>
	        <!-- 상품 정보 -->
	        <div class="product">
				<div>
					<h3 style="text-align: start;"> 3. 유상 서비스 대상 및 제품 특성 안내 </h3>
					<hr>
					<p>
						제품별 사용설명서에 안내된 방법 이외의 비정상적인 사용으로 발생한 문제는 유상서비스 대상임을 안내드립니다.
						<br><br>* 사용상의 고의, 과실, 임의 개조 및 변경, 수분 방치, 화학약품 접촉, 적정 하중 초과, 실외 사용 등
						
						천연소재의 특성에 따른 현상은 정상적인 상품임을 안내드립니다.
						<br><br>* 원목의 옹이 및 무늬결 차이는 나무의 성장과정에서 발생하는 현상입니다. 특히 옹이 및 무늬결 차이는 인공소재와는 달리
						각각의 다른 패턴을 통해 멋스러움을 느낄 수 있는 천연 소재의 장점입니다.
						
						<br><br>* 천연가죽의 흠집은 자연환경에서 건강하게 자란 소의 성장과정 중 일부 상처나 벌레 물린 자국 등으로 발생되며,
						이는 건강한 소의 가죽임을 보여주는 특징입니다.
					</p>
				</div>
			</div>
		</div>
    </div>     
	<div class="container" style="max-width: 1000px">
	    <div class="row">
            <div class="mb-3 row">
            </div>
	        <!-- 상품 정보 -->
	        <div class="product">
	        	<h3 style="text-align: start;"> 4. 유상 서비스 요금 안내 </h3>
	        	<hr>
	        	<div style="background-color: white; border-radius: 20px; padding: 30px;">
	        		<img style="width:100%;" src="../static/img/ASerImg.png" alt="AS flow"/>
	        	</div>
	        </div>
	    </div>
	</div>  
    <div class="container" style="max-width: 1000px">
	    <div class="row">
            <div class="mb-3 row">
            </div>
	        <!-- 상품 정보 -->
	        <div class="product">
		     	<h2 class="text-start">5. 문의사항</h2>		     	
				<hr>
				
		     	<p class="text-start">자세한 사항은 1522-4798로 문의해 주세요.</p>		     	
			</div>
		</div>
     </div>
     
     
    <jsp:include page="/layout/footer.jsp" />
	<jsp:include page="/layout/script.jsp" />
</body>
</html>