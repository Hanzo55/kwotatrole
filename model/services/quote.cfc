component {

	public function init( any ratingService ) {

		local.quote = "";
		local.ratingService = arguments.ratingService;

		setRatingService(arguments.ratingService);

		local.quote = new();
		local.quote.setId("1");
		local.quote.setText("He got exactly what he wanted: trashed.");
		local.quote.addRating(arguments.ratingService.get("1"));
		local.quote.addRating(arguments.ratingService.get("2"));
		local.quote.addRating(arguments.ratingService.get("3"));

		variables.quotes[local.quote.getId()] = local.quote;	

		variables.nextId = 2;

		return this;
	}

	public void function setRatingService( any ratingService ) {
		
		variables.ratingService = arguments.ratingService;
	}

	public any function getRatingService() {
		return variables.ratingService;
	}

	public function new() {

		return createObject('component','model.quote').init();
	}

	public function get( string id ) {

		if ( Len( arguments.id ) && StructKeyExists( variables.quotes, arguments.id ) )
			return variables.quotes[ arguments.id ];
		else
			return new();
	}

	public function list() {

		return variables.quotes;
	}

	public function save( any quote ) {

		local.newId = 0;

		if ( Len( arguments.quote.getId() ) ) {
			variables.quotes[ arguments.quote.getId() ] = arguments.quote;
		} else {

			 lock type="exclusive" name="setNextId" timeout="10" throwontimeout="false" {
				local.newId = variables.nextId; 
				variables.nextId = variables.nextId + 1; 
			}
		
			arguments.quote.setId( local.newId );

			variables.quotes[ local.newId ] = arguments.quote;
		}
	}


}