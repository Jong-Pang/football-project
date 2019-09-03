<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Document</title>
<!-- Theme CSS -->
<link href="${pageContext.request.contextPath}/resources/assets/css/main.css" rel="stylesheet" media="screen">
<!--Team player CSS  -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/teamplayer.css" />
<%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/teampage.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/default.css" /> --%>
</head>
<body>
	<div class="platercard">
		<div class="thecard">
			<div class="thefront">
				<p>
					<img src="/team/image/ë¦¬ë²í161.jpg" class="player">
				</p>
				<span>선수소개</span>
			</div>
			<div class="theback">
				<div class="cardContent">
					<h2>선수정보</h2>
					<h3>이름:</h3>
					<h3>나이:</h3>
					<h3>포지션:</h3>
					<h3>자기소개:</h3>
					<img src="" class="bottomright">
				</div>
			</div>
		</div>
	</div>

</body>
</body>
<script
	src="${pageContext.request.contextPath}/resources/js/Templating.js"></script>
<script>
	const TeampageElements = {
		teampageForm : document.querySelector("#teampageForm"),
		joinSubmitInput : document.querySelector("#join"),
		quitSubmitInput : document.querySelector("#quit")
	}
	
	const TeampageEvents ={
			setTeampageFormEvent(){
				TeampageElements.teampageForm.addEventListener("click", function(event){
					TeampageEvents.teampageFormEvent(event);
				});
			},
			teampageFormEvent(event){
				if(event.target === TeampageElements.joinSubmitInput){
					event.currentTarget.action = location.pathname + "/join";
					TeampageElements.teampageForm.submit();
				}
				if(event.target===TeampageElements.quitSubmitInput){
					event.currentTarget.action = location.pathname + "/quit";
					TeampageElements.teampageForm.submit();
				}
			} 
	}

	window.onload = function() {
		initPage();
		TeampageEvents.setTeampageFormEvent();
	};
</script>

<!-- ======================= JQuery libs =========================== -->
<!-- jQuery local-->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resourcesassets/js/jquery.js"></script>
<!-- popper.js-->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resourcesassets/js/popper.min.js"></script>
<!-- bootstrap.min.js-->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resourcesassets/js/bootstrap.min.js"></script>
<!-- required-scripts.js-->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resourcesassets/js/theme-scripts.js"></script>
<!-- theme-main.js-->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resourcesassets/js/theme-main.js"></script>
<!-- ======================= End JQuery libs =========================== -->