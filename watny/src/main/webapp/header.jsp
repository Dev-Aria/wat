<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<!DOCTYPE html PUBLIC"-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">


<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script type="text/javascript"
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="../css/aa.css" rel="stylesheet" type="text/css">
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css"
	rel="stylesheet">
<style>
</style>
</head>
<body>
	<nav class="navbar navbar-inverse navbarfixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="../home.jsp"><img height="25"
				alt="Brand" src="../images/w logo.png"></a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-user"></span></a>
				</li>
				<li><a href="#nav-collapse3" class="btn collapsed"
					data-toggle="collapse" aria-expanded="false"
					aria-controls="nav-collapse3"><span
						class="glyphicon glyphicon-search"></span></a></li>
			</ul>
			<div class="collapse nav navbar-nav nav-collapse slide-down"
				id="nav-collapse3">
				<form class="navbar-form navbar-right" role="search">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Search">
					</div>
					<button type="submit" class="btn btn-default">
						<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
					</button>
				</form>
			</div>
		</div>
	</div>
	</nav>
	<!-- top navbar end ----------------------------------------------->
	<!-- Carousel==================================================- ->
  <!-- Indicators -->
	<div class="carousel slide" id="myCarousel" data-interval="3500"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="item active">
				<img src="http://placehold.it/1500X300/000000/000000"
					class="img-responsive">
				<div class="container">
					<div class="carousel-caption">
						<h1>Carousel1</h1>
						<p></p>
						<p>
							<a class="btn btn-lg btn-primary" href="#">PROJECT START</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="http://placehold.it/1500X300/000000/000000"
					class="img-responsive">
				<div class="container">
					<div class="carousel-caption">
						<h1>Carousel2</h1>
						<p></p>
						<p>
							<a class="btn btn-lg btn-primary" href="#">SALE START</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="http://placehold.it/1500X300/000000/000000"
					class="img-responsive">
				<div class="container">
					<div class="carousel-caption">
						<h1>Carousel3</h1>
						<p></p>
						<p>
							<a class="btn btn-lg btn-primary" href="#">MY PAGE</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- Controls -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="icon-prev"></span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span class="icon-next"></span>
		</a>
	</div>
	<!-- carousel end------------------------------------------------- -->
	<!-- second nav bar -------------------------------------------------->
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand"><img height="30" alt="Brand"
				src="../images/w logo.png"></a>
		</div>
		<ul class="nav navbar-nav">
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> COMMUNITY <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#"> Q&amp;A</a></li>
					<li><a href="#"> 칼럼 </a></li>
				</ul></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> 자료실 <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#"> 라이브러리 </a></li>
					<li><a href="#"> 오픈소스 </a></li>
					<li><a href="#"> 시뮬레이터 </a></li>
				</ul></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> 프로젝트 <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#"> 팀원모집공고 </a></li>
					<li><a href="#"> 프로젝트 의뢰 </a></li>
					<li><a href="#"> 프로젝트 완료 </a></li>
					<li><a href="#"> 프로젝트 판매 </a></li>
				</ul></li>
		</ul>
	</div>
	</nav>
	<div class="section">
		<div class="container">