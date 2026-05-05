<?php 
class Mahasiswa extends Controller{
	
	public function index(){
		$data["siswa"] = $this->model("MahasiswaModel")->getAll();

		return $this->view("mahasiswa/index", $data);
	}
}