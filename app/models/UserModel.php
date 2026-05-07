<?php 

class UserModel extends Model{
	private $name = "Ahmad";

	public function getUser(){
		return $this->name;
	}

	public function login($data){
		$name = $data["username"];

		$query = "SELECT * FROM users where name = '$name'";
		$result = mysqli_query($this->conn, $query);
		
		$rows = [];

		while ($row = mysqli_fetch_assoc($result)) {
			$rows[] = $row;
		}

		if(!empty($rows)) return true;
		else return false;

	}
}