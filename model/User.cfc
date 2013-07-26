//User
component {

	variables.id = "";
	variables.username = "";
	variables.herdPercent = 0;

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

	public void function setHerdPercentage( numeric percent ) {

		variables.herdPercent = arguments.percent;
	}

	public numeric function getHerdPercentage() {

		return variables.herdPercent;
	}

}
