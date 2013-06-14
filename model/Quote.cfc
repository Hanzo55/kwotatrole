//Quote
component {

	variables.id = "";
	variables.text = "";

	public function init() {

		return this;
	}

	public void function setId( string id ) {

		variables.id = arguments.id;
	}

	public string function getId() {

		return variables.id;
	}

	public void function setText( string text ) {

		variables.text = arguments.text
	}

	public string function getText() {
	
		return variables.text;
	}

}
