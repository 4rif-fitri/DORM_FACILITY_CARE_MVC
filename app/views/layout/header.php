<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>DOM</title>
	<link rel="stylesheet" href="<?= BASEURL ?>/public/libs/bootstrap.min.css">
	<script src="<?= BASEURL ?>/public/libs/bootstrap.min.js"></script>
	<link rel="stylesheet" href="<?= BASEURL ?>/public/global.css">
	<script src="<?= BASEURL ?>/public/libs/jquery.min.js"></script>
</head>

<body>
	<input type="checkbox" name="bar-checkbox" hidden id="_bar-checkbox">
	<input type="checkbox" name="bar-checkbox" hidden id="_bar-checkbox">
	<input type="checkbox" name="minimize-checkbox" hidden id="_minimize-checkbox">
	<section id="_wrapper">
		<aside>
			<nav>
				<label for="_minimize-checkbox">
					<div class="_img-profile"></div>
				</label>
			</nav>
			<ul class="_links p-0">
				<a href="">
					<h1>IC</h1>
					<p>Dashboard</p>
				</a>
				<a href="">
					<h1>IC</h1>
					<p>New Report</p>
				</a>
				<a href="">
					<h1>IC</h1>
					<p>My Report</p>
				</a>
				<a href="">
					<h1>IC</h1>
					<p>My Profile</p>
				</a>
				<a href="">
					<h1>IC</h1>
					<p>Log out</p>
				</a>
			</ul>
		</aside>

		<section id="_main">
			<nav>
				<h3>New Report</h3>

				<label for="_bar-checkbox">
					<div class="_bar"></div>
					<div class="_bar"></div>
					<div class="_bar"></div>
				</label>

				<div class="_img-profile"></div>
			</nav>
