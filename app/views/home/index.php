<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<?php include(__DIR__ . "/../component/header.php") ?>
</head>

<body>

	<div class="container">

		<main>
			<div class="container py-4">
				<div class="p-5 mb-4 bg-body-tertiary rounded-3">
					<div class="container-fluid py-5">
						<h1 class="display-5 fw-bold">WELKOME <?= $data["name"] ?></h1>
						<p class="col-md-8 fs-4">Using a series of utilities, you can create this jumbotron, just like the one in previous versions of Bootstrap. Check out the examples below for how you can remix and restyle it to your liking.</p> <button class="btn btn-primary btn-lg" type="button">Example button</button>
					</div>
				</div>
			</div>
		</main>

	</div>
</body>

</html>