component extends="org.corfield.framework" {
	
	variables.framework = {
		home = "quote.default",
		suppressImplicitService = false
	}

	function setupApplication() {
		
		// manage entire application with DI/1:
		var bf = new model.ioc( folders=".",
			config = {
				constants={ settingsFile = ExpandPath("../") & '\config\settings.xml' }
			} 
		);
		
		setBeanFactory( bf );

	}

}