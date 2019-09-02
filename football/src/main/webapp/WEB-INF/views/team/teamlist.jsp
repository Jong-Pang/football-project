<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/teamlist.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/modal.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/default.css" />
</head>
<body>
	<div class="container_body">
		<!--TeamInformation body  -->
		<div class="container-fluid bg-light ">
			<div class="row align-items-center justify-content-center">
				<div class="col-md-2 pt-3">
					<div class="form-group ">
						<select id="inputState " class="form-control">
							<option selected>지역</option>
							<option>서울</option>
							<option>경기</option>
							<option>광주</option>
							<option>부산</option>
						</select>
					</div>
				</div>

				<div class="col-md-2 pt-3">
					<div class="form-group">
						<select id="inputState" class="form-control">
							<option selected>인원 수</option>
							<option>05명 이하</option>
							<option>10명 이하</option>
							<option>15명 이하</option>
							<option>20명 이하</option>
						</select>
					</div>
				</div>

				<div class="col-md-2 pt-3">
					<div class="form-group">
						<select id="inputState" class="form-control">
							<option selected>선출 유/무</option>
							<option>선출 보유</option>
							<option>선출 미보유</option>
						</select>
					</div>
				</div>

				<div class="col-md-2 pt-3">
					<div class="form-group">
						<select id="inputState" class="form-control">
							<option selected>모집 유/무</option>
							<option>모집 중</option>
							<option>모집 완료</option>
						</select>
					</div>
				</div>

				<div class="col-md-2">
					<button type="button" class="btn btn-primary btn-block">Search</button>
				</div>
			</div>
		</div>

		<div class="container_block">
			<h2>팀 개수:${teamlist.teamCount}</h2>
		</div>
		<div class="container_flex">
			<div class="leftcolumn">
				<c:forEach var="teamInfo" items="${teamlist.teamInfos}">
					<div class="TeamInformation">
						<h2>${teamInfo.name}</h2>
						<h6>Team reader xxx</h6>
						<h6>DEC 9, 2019</h6>
						<div class="Information" >TeamLogo</div>
						<p>ETC..</p>
						<p>Sunt in culpa qui officia deserunt mollit anim id est
							laborum consectetur adipiscing elit, sed do eiusmod tempor
							incididunt ut labore et dolore magna aliqua.</p>
					</div>
				</c:forEach>
			</div>
			<div class="rightcolumn">
				<div class="TeamInformation">
					<button class="TeamInformationButton" id="popbutton">
						<a href="modal.html">팀 만들기</a>
					</button>
					<div class="cookie" >cookie</div>
				</div>
				<!--TeamInformation body  -->
			</div>
		</div>
	</div>
</body>
<script src="/resources/js/Templating.js"></script>
<script>
	window.onload = function() {
		initPage();
	};
</script>
</html>
