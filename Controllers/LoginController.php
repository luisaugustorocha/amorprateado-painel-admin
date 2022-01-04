<?php

namespace Controllers;

use \Core\Controller;
use \Models\Users;

class LoginController extends Controller {

	public function index() {
		$array = array();

		$this->loadView('login', $array);
	}

	public function index_action() {
		
		if (!empty($_POST['email']) && !empty($_POST['password'])) {
			$email = $_POST['email'];
			$password = $_POST['password'];

			$user = new Users();

			if ($user->validateLogin($email, $password)) {
				header("Location: ".BASE_URL);
				exit;
			} else {
				header("Location: ".BASE_URL."login");
				exit;
			}
		} else {
			header("Location: ".BASE_URL."login");
			exit;
		}

		

	}
}
