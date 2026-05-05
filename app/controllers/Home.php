<?php 

class Home extends Controller{
	public function index(){
		$data["name"] = $this->model("UserModel")->getUser();

		$this->view('home/index', $data);
	}
}