<?php 
class User extends Controller{

	public function index(){
		// echo Auth::oauth("guest");

		$this->view("login");
	
	}

	public function login() {
		
		session_start();

		if (isset($_POST["submit"])) {
			$userName = $_POST["username"];
			$password = $_POST["password"];
		
			if(empty($userName)){
				$_SESSION["error"] = "Input username please";
				header("Location: " . BASEURL . "/guest/login");
				exit;
			}
			if (empty($password)) {
				$_SESSION["error"] = "Input password please";
				header("Location: " . BASEURL . "/guest/login");
				exit;
			}

			$data = [
				"username" => $userName,
				"password" => $password
			];

			$status = $this->model("UserModel")->login($data);


			if($status){
				header("Location: " . BASEURL . "/user/dashboard");
				exit;
			}
			else{
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

		$this->view("guest/login", $data);
	}

	public function dashboard(){
		$this->view("user/dashboard");
	}
}

?>