component accessors="true" {
	
	property framework;
	property quoteService;
	
	public void function startDefault( rc ) {
		
		rc.quote = variables.quoteService.get( argumentCollection=rc );

		rc.quotes = variables.quoteService.list();
	
	}

	public void function endDefault( rc ) {
		
		rc.content = variables.framework.view( "quote/add" );

	}	

	public void function startSave( rc ) {

		local.quote = variables.quoteService.get( argumentCollection=rc );

		variables.framework.populate( cfc=local.quote, trim=true );

		rc.quote = local.quote;
	}

	public void function endSave( rc ) {

		variables.framework.redirect( 'quote.default' );

	}
}