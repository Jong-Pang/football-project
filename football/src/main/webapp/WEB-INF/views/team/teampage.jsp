<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Document</title>
<link rel="stylesheet" type="text/css"
	href="/resources/css/teampage.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/default.css" />
</head>
<body>
	<div class="container_body">
		<div class="container_block">

			<!-- ?teamId=${teampage.teamInfo.id} -->
			<div class="content">
				<a href="teampage/teampage"><img src="" alt="TEAMLOGO" /></a>
				<p>TEAMNAME:${teampage.getTeamInfo().getName()}</p>
				<p>현원:${teampage.getTeamInfo().getPresentNum()}</p>
				<p>정원:${teampage.getTeamInfo().getMaxNum()}</p>
				<form id="teampageForm" class="form-horizontal" role="form" method="get" action="" name="form">
					<input type="hidden" name="teamId" value="${teampage.teamInfo.id }"/>
					<input id="join" type="button" value="가입" /> 
					<input id="quit" type="button" value="탈퇴" />
				</form>
			</div>

			<div class="menubar">
				<ul>
					<li><a href="#" id="current">TEAMHISTORY</a>
						<ul>
							<li><a href="#">팀소개</a></li>
							<li><a href="#">팀전적</a></li>
							<li><a href="#">팀활동</a></li>
						</ul></li>
					<li><a href="teampage/player">선수정보</a></li>
				</ul>
			</div>
			<div class="row">
				<div class="column" style="background-color: orange;"></div>
				<div class="column" style="background-color: yellow;"></div>
				<div class="column" style="background-color: green;"></div>
			</div>

		</div>
	</div>

</body>
<script src="/resources/js/Templating.js"></script>
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
</html>
