//rating.cfc
component {

	public function init() {

		variables.ratings = StructNew();

		local.rating = new();
		
		local.rating.setId("1");
		local.rating.setUserId(1);
		local.rating.setIsCitizen(true);

		variables.ratings[ local.rating.getId() ] = local.rating;

		local.rating = new();

		local.rating.setId("2");
		local.rating.setUserId(42);
		local.rating.setIsCitizen(true);

		variables.ratings[ local.rating.getId() ] = local.rating;

		local.rating = new();

		local.rating.setId("3");
		local.rating.setUserId(78);
		local.rating.setIsTroll(true);

		variables.ratings[ local.rating.getId() ] = local.rating;

		variables.nextId = 4;

		return this;
	}

	public function get( string id ) {

		if ( Len( arguments.id ) AND StructKeyExists( variables.ratings, arguments.id ) ) {
			return variables.ratings[ arguments.id ];		
		} else {
			return new();
		}

	}

	public function list() {

		return variables.ratings;
	}

	public struct function listByUser( any user ) {

		local.list = list();
		local.userList = StructNew();

		 for (listItem in local.list) {
		 	if ( listItem.getUserId() EQ arguments.user.getUserId() ) {
		 		StructAppend( local.userList, listItem );
		 	}
		}

		return local.userList;
	}

	public function new() {

		return CreateObject( 'component', 'model.Rating' ).init();
	}

}