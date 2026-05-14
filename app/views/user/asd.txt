<?php include(__DIR__ . "/../layout/header.php") ?>
<style>
	.img {
		width: 600px;
		height: 600px;
		border: 1px solid black;

		display: flex;
		align-items: center;
		justify-content: center;
	}
</style>

</head>

<body>
	<input type="file" name="file" id="file" multiple accept="image/*">

	<div class="img">
		<img id="img" src="" alt="">
	</div>
	<button id="asd">SUBMIT</button>
	<button id="copy">COPY</button>

	<img id="imgg" src="" alt="">

	<script>
		let imgURL

		document.getElementById("copy").addEventListener("click", () => {
			navigator.clipboard.writeText(imgURL)
				.then(() => {
					console.log("Copied");
				})
				.catch(err => {
					console.error("Copy failed", err);
				});
		});

		document.getElementById("asd").addEventListener("click", e => {
			console.log(imgURL);

			$.ajax({
				url: "<?= BASEURL ?>/user/image",
				method: "POST",
				dataType: "json",
				data: {
					userID: "D032410352",
					password: "abc1q58",
					imgUrl: imgURL,
				},
				success: respon => {
					console.log(respon.data);
					document.getElementById("imgg").src = respon.data
				}
			})
		})

		let add = event => {
			let files = event.type == "change" ? event.target.files[0] : ""

			let url = URL.createObjectURL(files)
			let img = new Image()
			img.src = url

			img.onload = e => {

				let width = img.width
				let height = img.height

				let ratio = Math.min(600 / height, 600 / width)

				if (ratio < 1) {
					width *= ratio
					height *= ratio
				}

				let canvas = document.createElement("canvas")
				let ctx = canvas.getContext("2d")

				canvas.width = width
				canvas.height = height

				ctx.drawImage(img, 0, 0, width, height)

				let dataUrl = canvas.toDataURL()

				imgURL = dataUrl

				document.getElementById("img").src = dataUrl

			}


		}
		document.addEventListener("change", add)
	</script>

	<?php include(__DIR__ . "/../layout/footer.php") ?>