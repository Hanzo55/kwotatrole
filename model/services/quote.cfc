component {

	public function init() {

		var quote = "";

		quote = new();
		quote.setId("1");
		quote.setText("He got exactly what he wanted: trashed.");

		variables.quotes[quote.getId()] = quote;

		variables.nextId = 2;

		return this;
	}

	public function new() {

		return createObject('component','model.quote').init();
	}

	public function get( string id ) {

		if ( Len( arguments.id ) && StructKeyExists( variables.quotes, id ) )
			return variables.quotes[arguments.id];
		else
			return new();
	}

	public function list() {

		return variables.quotes;
	}

	public function save( any quote ) {

		var newId = 0;

		if ( Len( arguments.quote.getId() ) ) {
			variables.quotes[arguments.quote.getId()] = arguments.quote;
		} else {

			 lock type="exclusive" name="setNextId" timeout="10" throwontimeout="false" {
				newId = variables.nextId; 
				variables.nextId = variables.nextId + 1; 
			}
		
			arguments.quote.setId( newId );

			variables.quotes[newId] = arguments.quote;
		}
	}
}