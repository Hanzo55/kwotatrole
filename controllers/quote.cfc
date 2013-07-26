component accessors="true" {
	
	property framework;
	property quoteService;
	property userService;

	public void function startDefault( rc ) {
		
		rc.quote = variables.quoteService.get( argumentCollection=rc );

		rc.quotes = variables.quoteService.list();

		rc.user = variables.userService.get( 1 );

	}

	public void function endDefault( rc ) {
		
		rc.header = variables.framework.view( "common/nav" );
		rc.content = variables.framework.view( "quote/add" ) & variables.framework.view( "quote/list" );
	}	

	public void function startSave( rc ) {

		local.quote = variables.quoteService.get( argumentCollection=rc );

		variables.framework.populate( cfc=local.quote, trim=true );

		rc.quote = local.quote;
	}

	public void function endSave( rc ) {

		variables.framework.redirect( 'quote.default' );
	}

	public void function startJudge( rc ) {

		// get the user about to judge a quote
		rc.user = variables.userService.get( 1 );
		rc.quote = variables.quoteService.get( argumentCollection=rc );
	}

	public void function endJudge( rc ) {

		variables.framework.redirect( 'quote.default' );
	}
}