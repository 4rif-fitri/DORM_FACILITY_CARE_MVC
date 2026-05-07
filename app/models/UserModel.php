<?php 

class UserModel extends Model{
	
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