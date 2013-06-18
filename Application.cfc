component extends="org.corfield.framework" {
	
	variables.framework = {
		home = "quote.default",
		suppressImplicitService = false	// this means fw1 will automatically call service.XX() between controller.startXX() and controller.endXX()

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