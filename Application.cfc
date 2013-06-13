component extends="org.corfield.framework" {
	
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