component extends="org.corfield.framework" {
	
	variables.framework = {
		home = "quote.default",
		suppressImplicitService = false	// this means fw1 will automatically call service.XX() between controller.startXX() and controller.endXX()

	}

	function setupApplication() {
		
		// manage entire application with DI/1:
		var bf = new model.ioc( folders=".",
			config = {
				constants={ settingsFile = ExpandPath("/") & '\config\settings.xml' }
			} 
		);
		
		setBeanFactory( bf );

	}

	function setupView() {

		var i=0;
		var j=0;
		var fullpath="";
		var path="";

		// C:\RailoBeta\webapps\kwotatrole\
		local.absPath.root = GetDirectoryFromPath( GetBaseTemplatePath() );

		// kwotatrole
		local.appName = getService( 'xml_config' ).getConfigValue( 'name' ).XmlText;

		// /assets/js
		local.jsPath = getService( 'xml_config' ).getConfigValue( 'path/js' ).XmlText;
		
		// /assets/js/libs
		local.libsPath = local.jsPath & "/libs";

		// /assets/js/ember
		local.emberPath = local.jsPath & "/" & LCase( local.appName );

		// C:\RailoBeta\webapps\kwotatrole\assets\js\libs
		local.absPath.libs = ExpandPath( local.libsPath );

		// C:\RailoBeta\webapps\kwotatrole\assets\js\kwotatrole
		local.absPath.emberApp = ExpandPath( local.emberPath );

		local.libFiles = DirectoryList( path=local.absPath.libs, recurse=true, listInfo='query', filter='*.js', sort='name DESC' );

		local.emberAppFiles = DirectoryList( path=local.absPath.emberApp, recurse=true, listInfo='path', filter='*.js' );

		rc.libs = ArrayNew( 1 );
		rc.emberFiles = ArrayNew( 1 );

		for ( i in local.libFiles ) {

			fullpath = i.directory & "\" & i.name;
			path = Mid(fullpath, Len(local.absPath.root), Len(fullpath) );

			ArrayAppend( rc.libs, Replace( path, "\","/", "ALL" ) );
		}

		for ( j in local.emberAppFiles ) {

			path = Mid(j, Len(local.absPath.root), Len(j) );

			ArrayAppend( rc.emberFiles, Replace( path, "\","/", "ALL" ) );
		}

	}

}