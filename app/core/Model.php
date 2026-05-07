<?php 

class Model{
	protected $host = DB_HOST;
	protected $user = DB_USER;
	protected $password = DB_PASSWORD;
	protected $database = DB_NAME;
	protected $conn;

	public function __construct()
	{
		//Database connetion
		$this->conn = mysqli_connect($this->host, $this->user, $this->password, $this->database);

		// Check jika sambungan gagal
		if (!$this->conn) {
			die("Connection failed: " . mysqli_connect_error());
		}
	}
}