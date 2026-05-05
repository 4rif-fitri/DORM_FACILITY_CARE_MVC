<?php 

class UserModel extends Model{
	private $name = "Ahmad";

	public function getUser(){
		return $this->name;
	}
}