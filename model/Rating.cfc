//Rating
component {

	variables.id = "";
	variables.userId = 0;
	variables.isTroll = false;
	variables.isCitizen = false;

	public function init() {

		return this;
	}

	// GETTERS (raw)

	public void function setId( string id ) {

		variables.id = arguments.id;
	}

	public string function getId() {

		return variables.id;
	}

	public void function setUserId( numeric userid ) {

		variables.userId = arguments.userid;
	}

	public numeric function getUserId() {

		return variables.userId;
	}	

	public void function setIsCitizen( boolean isCitizen ) {

		variables.isCitizen = arguments.isCitizen;
	}	

	public boolean function getIsCitizen() {

		return variables.isCitizen;
	}

	public void function setIsTroll( boolean isTroll ) {

		variables.isTroll = arguments.isTroll;
	}	

	public boolean function getIsTroll() {

		return variables.isTroll;
	}

}
