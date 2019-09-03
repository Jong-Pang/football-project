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
<link
	href="${pageContext.request.contextPath}/resources/assets/css/main.css"
	rel="stylesheet" media="screen">

<%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/teampage.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/default.css" /> --%>
</head>
<body>
	<div class="container_body">
		<!-- Section Title -->
		<div class="section-title-team">
			<div class="container">
				<div class="row">
					<div class="col-xl-7">
						<div class="row">
							<div class="col-md-3">
								<img
									src="${pageContext.request.contextPath}img/${teampage.getTeamInfo().getLogoPath()}"
									alt="">
							</div>
							<div class="col-md-9">
								<h1>${teampage.getTeamInfo().getName()}</h1>
								<ul class="general-info">
									<li>
										<h6>
											<strong>현원:</strong>${teampage.getTeamInfo().getPresentNum()}
										</h6>
									</li>

									<li>
										<h6>
											<strong>정원:</strong> ${teampage.getTeamInfo().getMaxNum()}
										</h6>
									</li>

									<li><h6>
											<strong>Manager:</strong> Pekerman
										</h6></li>
									<li><h6>
											<strong>Total Titles:</strong> 100+
										</h6></li>
									<li><h6>
											<strong>Location:</strong> Colombia
										</h6></li>
									<li>
										<h6>
											<i class="fa fa-link" aria-hidden="true"></i> <a
												href="https://themeforest.net/user/iwthemes/portfolio?ref=iwthemes"
												target="_blank">www.site.com</a>
										</h6>
									</li>
								</ul>
								<form id="teampageForm" class="form-horizontal" role="form"
									method="get" action="" name="form">
									<ul class="social-teams">
										<li>
											<div>
												<input id="join" type="button" value="가입" />
											</div>
										</li>
										<li>
											<div>
												<input id="quit" type="button" value="탈퇴" />
											</div>
										</li>
									</ul>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="bg-image-team"
				style="background: url(img/clubs-teams/colombia.jpg);"></div>
		</div>
		<!-- End Section Title -->

		<!-- Section Area - Content Central -->
		<section class="content-info">

			<!-- Single Team Tabs -->
			<div class="single-team-tabs">
				<div class="container">
					<div class="row">
						<!-- Left Content - Tabs and Carousel -->
						<div class="col-xl-12 col-md-12">
							<!-- Nav Tabs -->
							<ul class="nav nav-tabs" id="myTab">
								<li class="active"><a href="#overview" data-toggle="tab">Overview</a></li>
								<li><a href="#squad" data-toggle="tab">Squad</a></li>
								<li><a href="#fixtures" data-toggle="tab">FIXTURES</a></li>
								<li><a href="#results" data-toggle="tab">RESULTS</a></li>
								<li><a href="#stats" data-toggle="tab">STATS</a></li>
							</ul>
							<!-- End Nav Tabs -->
						</div>

						<div class="col-lg-9 padding-top-mini">
							<!-- Content Tabs -->
							<div class="tab-content">
								<!-- Tab One - overview -->
								<div class="tab-pane active" id="overview">

									<div class="panel-box padding-b">
										<div class="titles">
											<h4>Colombia national football team</h4>
										</div>
										<div class="row">
											<div class="col-lg-12 col-xl-4">
												<img src="img/clubs-teams/single-team.jpg" alt="">
											</div>

											<div class="col-lg-12 col-xl-8">
												<p>The Colombia national football team (Spanish:
													Selección de fútbol de Colombia) represents Colombia in
													international football competitions and is overseen by the
													Colombian Football Federation. It is a member of the
													CONMEBOL and is currently ranked thirteenth in the FIFA
													World Rankings.[3] The team are nicknamed Los Cafeteros due
													to the coffee production in their country.</p>

												<p>Since the mid-1980s, the national team has been a
													symbol fighting the country's negative reputation. This has
													made the sport popular and made the national team a sign of
													nationalism, pride and passion for many Colombians
													worldwide.</p>
											</div>
										</div>
									</div>

									<!--Items Club News -->
									<div class="row">
										<div class="col-md-12">
											<h3 class="clear-title">Latest Club News</h3>
										</div>

										<!--Item Club News -->
										<div class="col-lg-6 col-xl-4">
											<!-- Widget Text-->
											<div class="panel-box">
												<div class="titles no-margin">
													<h4>
														<a href="#">World football's dates.</a>
													</h4>
												</div>
												<a href="#"><img src="img/blog/1.jpg" alt=""></a>
												<div class="row">
													<div class="info-panel">
														<p>Fans from all around the world can apply for 2018
															FIFA World Cup™ tickets as the first window of sales.</p>
													</div>
												</div>
											</div>
											<!-- End Widget Text-->
										</div>
										<!--End Item Club News -->

										<!--Item Club News -->
										<div class="col-lg-6 col-xl-4">
											<!-- Widget Text-->
											<div class="panel-box">
												<div class="titles no-margin">
													<h4>
														<a href="#">Mbappe’s year to remember</a>
													</h4>
												</div>
												<a href="#"><img src="img/blog/2.jpg" alt=""></a>
												<div class="row">
													<div class="info-panel">
														<p>Tickets may be purchased online by using Visa
															payment cards or Visa Checkout. Visa is the official.</p>
													</div>
												</div>
											</div>
											<!-- End Widget Text-->
										</div>
										<!--End Item Club News -->

										<!--Item Club News -->
										<div class="col-lg-6 col-xl-4">
											<!-- Widget Text-->
											<div class="panel-box">
												<div class="titles no-margin">
													<h4>
														<a href="#">Egypt are one family</a>
													</h4>
												</div>
												<a href="#"><img src="img/blog/3.jpg" alt=""></a>
												<div class="row">
													<div class="info-panel">
														<p>Successful applicants who have applied for
															supporter tickets and conditional supporter tickets will.</p>
													</div>
												</div>
											</div>
											<!-- End Widget Text-->
										</div>
										<!--End Item Club News -->
									</div>
									<!--End Items Club News -->


									<!--Items Club video -->
									<div class="row no-line-height">
										<div class="col-md-12">
											<h3 class="clear-title">Latest Club Videos</h3>
										</div>

										<!--Item Club News -->
										<div class="col-lg-6 col-xl-4">
											<!-- Widget Text-->
											<div class="panel-box">
												<div class="titles no-margin">
													<h4>
														<a href="#">Eliminatory to the world.</a>
													</h4>
												</div>
												<iframe class="video"
													src="https://www.youtube.com/embed/Ln8rXkeeyP0"
													frameborder="0" gesture="media" allow="encrypted-media"
													allowfullscreen></iframe>
											</div>
											<!-- End Widget Text-->
										</div>
										<!--End Item Club News -->

										<!--Item Club News -->
										<div class="col-lg-6 col-xl-4">
											<!-- Widget Text-->
											<div class="panel-box">
												<div class="titles no-margin">
													<h4>
														<a href="#">Colombia classification</a>
													</h4>
												</div>
												<iframe class="video"
													src="https://www.youtube.com/embed/Z5cackyUfgk"
													frameborder="0" gesture="media" allow="encrypted-media"
													allowfullscreen></iframe>
											</div>
											<!-- End Widget Text-->
										</div>
										<!--End Item Club News -->

										<!--Item Club News -->
										<div class="col-lg-6 col-xl-4">
											<!-- Widget Text-->
											<div class="panel-box">
												<div class="titles no-margin">
													<h4>
														<a href="#">World Cup goal</a>
													</h4>
												</div>
												<iframe class="video"
													src="https://www.youtube.com/embed/hW3hnUoUS0k"
													frameborder="0" gesture="media" allow="encrypted-media"
													allowfullscreen></iframe>
											</div>
											<!-- End Widget Text-->
										</div>
										<!--End Item Club News -->
									</div>
									<!--End Items Club video -->

									<!--Sponsors CLub -->
									<div class="row no-line-height">
										<div class="col-md-12">
											<h3 class="clear-title">Sponsors Club</h3>
										</div>
									</div>
									<!--End Sponsors CLub -->

									<ul class="sponsors-carousel">
										<li><a href="#"><img src="img/sponsors/1.png" alt=""></a></li>
										<li><a href="#"><img src="img/sponsors/2.png" alt=""></a></li>
										<li><a href="#"><img src="img/sponsors/3.png" alt=""></a></li>
										<li><a href="#"><img src="img/sponsors/4.png" alt=""></a></li>
										<li><a href="#"><img src="img/sponsors/5.png" alt=""></a></li>
										<li><a href="#"><img src="img/sponsors/3.png" alt=""></a></li>
									</ul>

								</div>
								<!-- Tab One - overview -->

								<!-- Tab Two - squad -->
								<div class="tab-pane" id="squad">
									<div class="row">

										<!-- Item Player -->
										<div class="col-xl-4 col-lg-6 col-md-6">
											<div class="item-player">
												<div class="head-player">
													<img src="img/players/1.jpg" alt="location-team">
													<div class="overlay">
														<a href="single-player.html">+</a>
													</div>
												</div>
												<div class="info-player">
													<span class="number-player"> 13 </span>
													<h4>
														Cristiano Ronaldo <span>Forward</span>
													</h4>
													<ul>
														<li><strong>NATIONALITY</strong> <span><img
																src="img/clubs-logos/colombia.png" alt="">
																Colombia </span></li>
														<li><strong>MATCHES:</strong> <span>90</span></li>
														<li><strong>AGE:</strong> <span>28</span></li>
													</ul>
												</div>
												<a href="single-player.html" class="btn">View Player <i
													class="fa fa-angle-right" aria-hidden="true"></i></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<!-- End Item Player -->


	<!-- ?teamId=${teampage.teamInfo.id} -->
	<%-- 		<div class="content">
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
		</div>
 --%>
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