<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Document</title>
<<<<<<< HEAD
<link rel="stylesheet" type="text/css" href="test.css" />

<style type="text/css">

body {
  margin: 0px;
}

.container_header {
  width: 100%;
  height: 100px;
  position: relative;
}

.conatiner_header_menu {
  display: inline;
  position: absolute;
  top: 5px;
  right: 10px;
}

.container_absolute_bottom {
  position: absolute;
  bottom: 0px;
  width: 100%;
}

.container_body {
  margin: 10px;
}

.logo {
  display: inline;
  margin: 20px;
}

.logo h1 {
  display: inherit;
}

.header_menu {
  margin-left: 3px;
  margin-right: 3px;
}

.navbar {
  display: inline;
}

.navbar_menu {
  margin-left: 10px;
  margin-right: 10px;
}

.footer_contents {
  background-color: lightgray;
  height: 100px;
}

/*teampagecss  */
* {
	box-sizing: border-box;
	font-family: Arial, Helvetica, sans-serif;
}

body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}

.content {
	background: linear-gradient(90deg, #3498db 50%, #ffffff 50%);
	padding: 10px;
	height: 200px;
}
/*메뉴 및 드롭다운  */
.menubar {
	border: none;
	border: 0px;
	margin: 0px;
	padding: 0px;
	font: 67.5% "Lucida Sans Unicode", "Bitstream Vera Sans",
		"Trebuchet Unicode MS", "Lucida Grande", Verdana, Helvetica,
		sans-serif;
	font-size: 14px;
	font-weight: bold;
}

.menubar ul {
	background: rgb(109, 109, 109);
	height: 50px;
	list-style: none;
	margin: 0;
	padding: 0;
}

.menubar li {
	float: left;
	padding: 0px;
}

.menubar li a {
	background: rgb(109, 109, 109);
	color: #cccccc;
	display: block;
	font-weight: normal;
	line-height: 50px;
	margin: 0px;
	padding: 0px 25px;
	text-align: center;
	text-decoration: none;
}

.menubar li a:hover, .menubar ul li:hover a {
	background: rgb(71, 71, 71);
	color: #FFFFFF;
	text-decoration: none;
}

.menubar li ul {
	background: rgb(109, 109, 109);
	display: none;
	height: auto;
	padding: 0px;
	margin: 0px;
	border: 0px;
	position: absolute;
	width: 200px;
	z-index: 200;
	/*top:1em;
/*left:0;*/
}

.menubar li:hover ul {
	display: block; /* 마우스 커서 올리면 드랍메뉴 보이게 하기 */
}

.menubar li li {
	background: rgb(109, 109, 109);
	display: block;
	float: none;
	margin: 0px;
	padding: 0px;
	width: 200px;
}

.menubar li:hover li a {
	background: none;
}

.menubar li ul a {
	display: block;
	height: 50px;
	font-size: 12px;
	font-style: normal;
	margin: 0px;
	padding: 0px 10px 0px 15px;
	text-align: left;
}

.menubar li ul a:hover, .menubar li ul li:hover a {
	background: rgb(71, 71, 71);
	border: 0px;
	color: #ffffff;
	text-decoration: none;
}

.menubar p {
	clear: left;
}

.column {
	float: left;
	width: 33.33%;
	padding: 10px;
	height: 300px; /* Should be removed. Only for demonstration */
}

.row:after {
	content: "";
	display: table;
	clear: both;
}

img {
	height: 178px;
	border-radius: 100px;
}
</style>
=======
<link rel="stylesheet" type="text/css"
	href="/resources/css/teampage.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/default.css" />
>>>>>>> dev
</head>
<body>
	<div class="container_body">
	<div class="container_block">
		<form  class="form-horizontal" role="form"
			method="post" action="teampagePro" name="userinput"
			onsubmit="return checkIt()">
			<div class="content">
				<a href="teampage/teampage"><img src="" alt="TEAMLOGO" /></a>
				<p>TEAMID:${teampage.getTeamInfo().getName()}</p>
				<p>현원:${teampage.getTeamInfo().getPresentNum()}</p>
				<p>정원:${teampage.getTeamInfo().getMaxNum()}</p>
				<input type="submit" value="가입"> <input type="submit"
					value="탈퇴">
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

			<br> <br> <br> <br> <br> <br>

			<div class="row">
				<div class="column" style="background-color: orange;"></div>
				<div class="column" style="background-color: yellow;"></div>
				<div class="column" style="background-color: green;"></div>
			</div>
			<br> <br> <br> <br> <br> <br>
		</form>
		</div>
	</div>
<<<<<<< HEAD
</form>
=======
>>>>>>> dev

</body>
<script src="/resources/js/Templating.js"></script>
<script>
	window.onload = function() {
		initPage();
	};
</script>
</html>
