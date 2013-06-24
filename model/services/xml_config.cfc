component {

	public function init( string settingsFile ) {

		variables.filePath = arguments.settingsFile;

		return this;
	}

	public function getConfigValue( string key ) {
		var xml = FileRead(variables.filePath);
		var config = XmlParse(xml);
		var root = XmlSearch(config, '//App/' & arguments.key );

		return root[1];
	}

}