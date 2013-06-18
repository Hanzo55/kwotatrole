//user.cfc
component {

	public function init() {

		local.user = "";

		local.user = new();
		local.user.setId("1");
		local.user.setUsername("Hanzo");
		local.user.setHeaven(0);
		local.user.setHell(0);

		variables.users[ local.user.getId() ] = local.user;

		variables.nextId = 2;

		return this;

	}

	public function get( string id ) {

		if ( Len( arguments.id ) && StructKeyExists( variables.users, arguments.id ) )
			return variables.users[ arguments.id ];
		else
			return new();
	}	

	public function new() {

		return createObject( 'component','model.User' ).init();
	}

	public function list() {

		return variables.users;
	}

	public function save( any user ) {

		local.newId = 0;

		if ( Len( arguments.user.getId() ) ) {
			variables.users[ arguments.user.getId() ] = arguments.user;
		} else {

			 lock type="exclusive" name="setNextId" timeout="10" throwontimeout="false" {
				local.newId = variables.nextId; 
				variables.nextId = variables.nextId + 1; 
			}
		
			arguments.user.setId( local.newId );

			variables.users[ local.newId ] = arguments.user;
		}
	}	
}