<?php

require_once __DIR__ . '/../helpers/Mail.php';

class User extends Controller
{

	public function index()
	{
		// echo Auth::oauth("guest");

		$this->view("/guest/login");
	}

	public function login()
	{
		// echo Auth::oauth("guest");
		session_start();

		if (isset($_POST["submit"])) {
			$userID = $_POST["userID"];
			$password = $_POST["password"];

			if (empty($userID)) {
				$_SESSION["error"] = "Input User ID please";
				header("Location: " . BASEURL . "/guest/login");
				exit;
			}
			if (empty($password)) {
				$_SESSION["error"] = "Input password please";
				header("Location: " . BASEURL . "/guest/login");
				exit;
			}

			$data = [
				"userID" => $userID,
				"password" => $password
			];

			$status = $this->model("UserModel")->login($data);

			// return true;

			if ($status) {
				header("Location: " . BASEURL . "/user/dashboard");
				exit;
			} else {
				$_SESSION["error"] = "Invalid credential";
				header("Location: " . BASEURL . "/guest/login");
				exit;
			}
		}

		// GET request
		$data = [
			"error" => $_SESSION["error"] ?? null
		];

		unset($_SESSION["error"]);

		$this->view("/guest/login", $data);
	}

	public function dashboard()
	{
		// echo Auth::oauth("auth");

		$status = Mail::send(
			"dopymonster@gmail.com",
			"Welcome",
			"Terima kasih daftar sistem kami"
		);

		if ($status) {
			echo "Email dihantar";
		} else {
			echo "Email gagal";
		}

		$this->view("user/dashboard");
	}
}
