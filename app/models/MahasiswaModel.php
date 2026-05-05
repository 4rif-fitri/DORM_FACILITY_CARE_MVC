<?php

class MahasiswaModel extends Model{

	public function getAll() {

		$query = "SELECT * FROM user";
		$result = mysqli_query($this->conn, $query);

		$rows = [];
		// Pastikan loop ini betul untuk kumpul data dalam array
		while ($row = mysqli_fetch_assoc($result)) {
			$rows[] = $row;
		}

		return $rows; // Mesti return array!
	}
}