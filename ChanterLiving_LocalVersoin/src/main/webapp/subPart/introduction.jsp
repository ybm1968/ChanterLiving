<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ChanterLiving</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<!-- 다음번에 링크로 연결하기  -->
    <link rel="stylesheet" href="../static/css/subPart/introdution.css">
</head>
<body>
	<jsp:include page="/layout/header.jsp" />
	
	<div class="outerClass">
        <!-- 배경 동영상 영역1 --> 
        <div class="innerClass">
            <video muted autoplay loop>
                <source src="../static/video/introdutionVideo.mp4" type="video/mp4">
            </video>
        </div>
	</div>
		<div class="scrollText textDeco" style="width: 600px">
			<jsp:include page="/layout/centerText.jsp" />
		</div>
		<div class="scrollText textDeco text-start" style="margin-top: 1000px">
			<h1>우리는 단순히 인테리어를 하는게 아니라 <br> 라이프 스타일을 짓습니다.</h1>
			<p class="text-start">ChanterLiving의 핵심가치</p>
		</div>
		<div class="outerClass2">
			<div class="margin-bottom-80vh margin-top-60vh innerClass2">
				<h2 style="text-align: center;" class=" ">ChanterLiving의 디자인</h2>
				<h1 style="text-align: center;">공간을 새롭게 정의해 보세요.</h1>
				<p style="text-align: center;">포용, 성장, 독창성에 기반한 ChanterLiving의 디자인을 살펴보세요. 최적의 솔루션과 노하우로 인테리어의 한계를 넘어섭니다.</p>
			</div>
		</div>
	
<!-- 	<div class="outerClass"> -->
<!--         배경 동영상 영역2  -->
<!--         <div class="innerClass"> -->
<!--             <video muted autoplay loop> -->
<!--                 <source src="../static/video/intro4.mp4" type="video/mp4"> -->
<!--             </video> -->
<!--         </div> -->
<!-- 	</div> -->
		<div class="scrollText textDeco" style="width: 600px">
			<jsp:include page="/layout/centerText.jsp" />
		</div>
<!-- 		<div class="scrollText textDeco text-start" style="margin-top: 1000px"> -->
<!-- 			<h1>우리는 단순히 인테리어를 하는게 아니라 <br> 라이프 스타일을 짓습니다.</h1> -->
<!-- 			<p class="text-start">핵심가치</p> -->
<!-- 		</div> -->

	<div class="container" style="max-width: 1000px">
	    <div class="row">
            <div class="mb-3 row">
            </div>
	        <!-- 상품 정보 -->
	        <div class="product">
				<div>
					<h3 style="text-align: start;"> 1. 회사의 역사와 설립 배경 </h3>
					<hr>
	        		<img style="border-radius: 15px; float: left; margin: 0 30px 8px 0; width: 300px;" src="../static/img/comouterImg.jpg" alt="AS flow"/>
					
					<p>
						우리의 회사, "AI Interiors"는 기존 인테리어 디자인의 한계를 넘어선 새로운 경험을 제공하기 위해 탄생하였습니다. 2021년에 설립된 이래로, 우리는 AI와 인테리어 디자인이 결합한 혁신적인 방식으로 공간을 재해석하고 있습니다.

						우리의 설립 배경은 두 가지 주요 요소에 근거하고 있습니다. 첫째, 기존 인테리어 디자인 방식은 개별적이고 독특한 고객 요구를 충분히 반영하지 못한다는 점에서 문제가 있었습니다. 그 결과 많은 고객들이 자신들의 취향과 생활 스타일을 완벽하게 반영하지 못하는 표준화된 솔루션에 만족해야 했습니다. 둘째, AI 기술의 발전은 이러한 문제를 해결할 수 있는 열쇠가 될 수 있다는 가능성을 보여주었습니다.
						
						따라서 우리는 AI를 활용하여 각 고객의 세부적인 요구사항과 취향을 파악하고, 이를 바탕으로 최적화된 인테리어 디자인 솔루션을 제공하는 것을 목표로 회사를 설립하게 되었습니다. 
						
						AI Interiors라는 이름 아래에서 우리는 AI 기반 분석 및 예측 모델링 기법과 창조적이며 예술적인 인테리어 디자인 사이의 교차점에서 작동합니다. 그 결과로 생산되는 독특한 디자인은 각 공간이 그 주체의 삶과 가치를 반영하는 유니크한 아트워크가 되도록 합니다.
						
						우리 회사 역사에 걸친 지속적인 연구와 혁신은 AI Interiors가 오늘날 집과 사무실, 상업공간 등 다양한 공간에서 최상의 사용 경험을 제공하는 데 선두주자가 되도록 만들었습니다. 그리고 이 모든 것은 우리가 지향하는 핵심 가치인 '각 개인의 삶을 향상시키는 완벽한 공간 디자인'을 실현하기 위한 것입니다.
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
				<div>
					<h3 style="text-align: start;"> 2. ChanterLiving의 비전과 미션 </h3>
					<hr>
						<h4>비전 스테이트먼트</h4>
						정기적인 팀 미팅:
	
						주간 또는 이주일에 한 번의 정기 미팅을 통해 팀원들이 프로젝트 진행 상황을 공유하고 문제점을 논의할 수 있게 합니다.
						미팅에서는 개인과 팀의 목표 달성 상황, 도전 과제, 기회 등에 대해 이야기하는 시간을 가집니다.
						디지털 커뮤니케이션 플랫폼 사용:
						
						Slack, Microsoft Teams 등의 디지털 커뮤니케이션 플랫폼을 사용하여 실시간으로 정보를 공유하고 대화를 유지합니다.
						프로젝트 관리 도구 like Asana, Trello, or Monday.com 등을 사용하여 작업을 할당하고 프로젝트의 진행 상황을 추적합니다.
						개방적인 문화 구축:
						
						피드백과 제안을 환영하는 문화를 만들어 직원들이 자유롭게 의견을 제시할 수 있도록 합니다.
						개방적이고 양방향의 소통을 위해 도어 오픈 정책(door open policy)을 실천합니다.
						이메일 커뮤니케이션:
						
						이메일을 통해 중요한 정보를 전달하고, 약속된 시간 안에 응답을 제공하여 소통의 지연을 최소화합니다.
						교육 및 트레이닝 세션:
						
						교육 및 트레이닝 세션을 통해 직원들에게 새로운 소통 도구와 기술을 소개하고, 팀워크와 협업을 강조합니다.
						소셜 이벤트 및 팀 빌딩 활동:
						
						팀 빌딩 이벤트나 회사 내 소셜 이벤트를 통해 직원들 간의 관계를 강화하고, 비공식적인 환경에서의 소통을 촉진합니다.
						명확한 목표 설정 및 기대치 관리:
						
						프로젝트의 목표와 기대치를 명확히 정의하여 모든 팀원이 동일한 이해를 공유할 수 있도록 합니다.
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
					<h3 style="text-align: start;"> 3. 직원 소통 방법 </h3>
					<hr>
	        		<img style="border-radius: 15px; float: right; margin: 0 0 8px 30px; width: 450px;" src="../static/img/comferImg.jpg" alt="AS flow"/>
					
					<p>
						정기적인 팀 미팅:

						주간 또는 이주일에 한 번의 정기 미팅을 통해 팀원들이 프로젝트 진행 상황을 공유하고 문제점을 논의할 수 있게 합니다.
						미팅에서는 개인과 팀의 목표 달성 상황, 도전 과제, 기회 등에 대해 이야기하는 시간을 가집니다.
						디지털 커뮤니케이션 플랫폼 사용:
						
						Slack, Microsoft Teams 등의 디지털 커뮤니케이션 플랫폼을 사용하여 실시간으로 정보를 공유하고 대화를 유지합니다.
						프로젝트 관리 도구 like Asana, Trello, or Monday.com 등을 사용하여 작업을 할당하고 프로젝트의 진행 상황을 추적합니다.
						개방적인 문화 구축:
						
						피드백과 제안을 환영하는 문화를 만들어 직원들이 자유롭게 의견을 제시할 수 있도록 합니다.
						개방적이고 양방향의 소통을 위해 도어 오픈 정책(door open policy)을 실천합니다.
						이메일 커뮤니케이션:
						
						이메일을 통해 중요한 정보를 전달하고, 약속된 시간 안에 응답을 제공하여 소통의 지연을 최소화합니다.
						교육 및 트레이닝 세션:
						
						교육 및 트레이닝 세션을 통해 직원들에게 새로운 소통 도구와 기술을 소개하고, 팀워크와 협업을 강조합니다.
						소셜 이벤트 및 팀 빌딩 활동:
						
						팀 빌딩 이벤트나 회사 내 소셜 이벤트를 통해 직원들 간의 관계를 강화하고, 비공식적인 환경에서의 소통을 촉진합니다.
						명확한 목표 설정 및 기대치 관리:
						
						프로젝트의 목표와 기대치를 명확히 정의하여 모든 팀원이 동일한 이해를 공유할 수 있도록 합니다.
					</p>
				</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="/layout/footer.jsp" />
	<jsp:include page="/layout/script.jsp" />
</body>
</html>


<!-- ChanterLiving은 인공지능을 이용한 맞춤형 서비스를 제공하는 기업입니다. 우리는 고객의 다양한 요구에 맞추어 최적의 솔루션을 제공하며, 이를 통해 고객의 만족도를 높이고 새로운 가치를 창출하고자 합니다. 우리의 목표는 차별화된 서비스와 혁신적인 기술을 통해 고객들에게 새로운 경험을 제공하는 것입니다. ChanterLiving은 항상 최신 기술과 트렌드를 반영하여 고객들의 요구에 부합하는 서비스를 제공하며, 이를 통해 고객들의 라이프스타일을 보다 편리하고 풍요롭게 만들어드립니다.  -->