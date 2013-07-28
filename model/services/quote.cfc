component {

	public function init( any ratingService, any siteService ) {

		local.quote = "";
		local.ratingService = arguments.ratingService;
		local.siteService = arguments.siteService;

		setRatingService( arguments.ratingService );
		setSiteService( arguments.siteService );

		local.quote = new();
		local.quote.setId( 1 );
		local.quote.setText( 'It''s like World of Warcraft...in 1985.' );
		local.quote.setSourceUrl( 'http://www.codinghorror.com/blog/2012/12/the-organism-will-do-what-it-damn-well-pleases.html' );
		local.quote.setSourceTitle( 'The Organism Will Do Whatever It Damn Well Pleases' );
		local.quote.setAuthor( 'Jeff Atwood' );

		local.quote.setSiteName( arguments.siteService.get(1).getName() );
		local.quote.setSiteUrl( arguments.siteService.get(1).getUrl() );
		
		local.quote.addRating( arguments.ratingService.get("1") );
		local.quote.addRating( arguments.ratingService.get("2") );
		local.quote.addRating( arguments.ratingService.get("3") );	

		variables.quotes[ local.quote.getId() ] = local.quote;	

		variables.nextId = 2;

		return this;
	}

	//dependencies
	public void function setRatingService( any ratingService ) {
		
		variables.ratingService = arguments.ratingService;
	}

	public any function getRatingService() {
		return variables.ratingService;
	}

	public void function setSiteService( any siteService ) {
		
		variables.siteService = arguments.siteService;
	}

	public any function getSiteService() {
		return variables.siteService;
	}	

	//methods
	public function new() {

		return createObject('component','model.Quote').init();
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

	public function judge( any user, any quote, string verdict ) {

		// get a new rating object.
		local.service = getRatingService();

		local.rating = local.service.get();

		local.rating.setUserId( arguments.user.getId() );

		if ( arguments.verdict IS 'c' ) {
			local.rating.setIsCitizen(true);
		} else {
			local.rating.setIsTroll(true);
		}

		// commit rating to non-volatile (gives it a key in the db)
		local.service.save( local.rating );

		// attach to quote
		arguments.quote.addRating( local.rating );

		// commit quote to non-volatile
		save( arguments.quote );
	}
}