<?php include(__DIR__ . "/../layout/header.php") ?>

<style>
	body {
		background-color: lightblue;
		height: 100vh;
		display: flex;
		align-items: center;
		justify-content: center;
	}
</style>

<main>

	<form method="post" action="<?= BASEURL ?>/user/login">
		<table>
			<tr>
				<td>
					<label for="userID">User ID</label>
				</td>
				<td>
					<input type="text" name="userID" id="userID">
				</td>
			</tr>

			<tr>
				<td>
					<label for="password">Password</label>
				</td>
				<td>
					<input type="password" name="password" id="password">
				</td>
			</tr>
			<?php if (!empty($data["error"])): ?>
				<tr>
					<td></td>
					<td>
						<p style="color:red;"><?= $data["error"] ?></p>
					</td>
				</tr>
			<?php endif; ?>
			<tr>
				<td>
					<button name="submit" class="btn btn-primary" type="submit">Submit</button>
				</td>
				<td>
					<button name="ajax" id="ajax" class="btn btn-warning" type="button">Ajax</button>
				</td>
			</tr>
		</table>
	</form>

</main>

<script>
	document.getElementById("ajax").addEventListener("click", e => {
		$.ajax({
			url: "<?= BASEURL ?>/user/ajax",
			method: "POST",
			data: {
				userID: "D032410352",
				password: "abc1q58"
			},
			success: respon => {
				console.log(respon);

			}
		})
	})
</script>

<?php include(__DIR__ . "/../layout/footer.php") ?>