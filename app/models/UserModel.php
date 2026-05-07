<?php 

class UserModel extends Model{
	private $name = "Ahmad";

	public function getUser(){
		return $this->name;
	}

	public function login($data){
		$userID = $data["userID"];
		$password = $data["password"];

		$query = "SELECT * FROM user 
				WHERE userID = '$userID' AND
				password = '$password'";
		$result = mysqli_query($this->conn, $query);

		$rows = [];

		while ($row = mysqli_fetch_assoc($result)) {
			$rows[] = $row;
		}

		// var_dump($rows);
		
		if(!empty($rows)) return true;
		else return false;

	}
}