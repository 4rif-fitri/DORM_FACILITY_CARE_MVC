<?php include(__DIR__ . "/layout/header.php") ?>

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

	<form method="post" action="<?= BASEURL ?>/login">
		<table>
			<?php if (!empty($data["username"])): ?>
				<tr>
					<p>Username: <?= $data["username"] ?></p>
					<p>Password: <?= $data["password"] ?></p>
				</tr>
			<?php endif ?>
			<tr>
				<td>
					<label for="username">Username</label>
				</td>
				<td>
					<input type="text" name="username" id="username">
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
				<td></td>
			</tr>
		</table>
	</form>

</main>

<?php include(__DIR__ . "/layout/footer.php") ?>