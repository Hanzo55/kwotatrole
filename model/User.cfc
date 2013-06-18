//User
component {

	variables.id = "";
	variables.username = "";
	variables.heaven = 0;
	variables.hell = 0;

	public function init() {

		return this;
	}

	public void function setId( string id ) {

		variables.id = arguments.id;
	}

	public string function getId() {

		return variables.id;
	}

	public void function setUsername( string username ) {

		variables.username = arguments.username
	}

	public string function getUsername() {
	
		return variables.username;
	}

	public void function setHeaven( numeric heaven ) {

		variables.heaven = arguments.heaven
	}

	public numeric function getHeaven() {
	
		return variables.heaven;
	}	

	public void function setHell( numeric hell ) {

		variables.hell = arguments.hell
	}

	public numeric function getHell() {
	
		return variables.hell;
	}

}
