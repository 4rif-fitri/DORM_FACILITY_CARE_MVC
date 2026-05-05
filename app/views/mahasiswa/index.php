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
		<?php foreach ($data["siswa"] as $mhs) : ?>
			<li><?= $mhs['name']; ?></li>
		<?php endforeach; ?>

	</div>
</body>

</html>