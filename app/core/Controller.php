<?php 

class Controller{
	public function view($view, $data = []){
		require_once APPROOT . "/app/views/" . $view . ".php"; 
	}
	public function model($model)
	{
		require_once APPROOT . "/app/models/" . $model . ".php";
		return new $model;
	}
}

?>