//Quote
component {

	variables.id = "";
	variables.text = "";
	variables.ratings = ArrayNew(1);
	variables.siteName = "";
	variables.siteUrl = "";
	variables.sourceTitle = "";
	variables.sourceUrl = "";
	variables.author = "";

	public function init() {

		return this;
	}
	

	// GETTERS (raw)
	public void function setId( string id ) {

		variables.id = arguments.id;
	}

	public string function getId() {

		return variables.id;
	}

	public void function setAuthor( string author ) {

		variables.author = arguments.author;
	}

	public string function getAuthor() {

		return variables.author;
	}

	public void function setSourceTitle( string source_title ) {

		variables.sourceTitle = arguments.source_title;
	}

	public string function getSourceTitle() {

		return variables.sourceTitle;
	}

	public void function setSourceUrl( string source_url ) {

		variables.sourceUrl = arguments.source_url;
	}

	public string function getSourceUrl() {

		return variables.sourceUrl;
	}





	public void function setSiteName( string name ) {

		variables.siteName = arguments.name;
	}

	public string function getSiteName() {

		return variables.siteName;
	}

	public void function setSiteUrl( string url ) {

		variables.siteUrl = arguments.url;
	}	

	public string function getSiteUrl() {

		return variables.siteUrl;
	}

	public void function setText( string text ) {

		variables.text = arguments.text
	}

	public string function getText() {
	
		return variables.text;
	}

	public void function addRating( any rating ) {

		ArrayAppend( variables.ratings, arguments.rating );
	}

	public boolean function hasUserRated( any user ) {

		for (i in variables.ratings) {

			if (i.getUserId() EQ arguments.user.getId() )
				return true;

		}

		return false;
	}

	public string function getRatings() {

		local.citizenCount = 0;
		local.trollCount = 0;

		for (i in variables.ratings) {

			if (i.getIsCitizen())
				local.citizenCount++;

			else if (i.getIsTroll())
				local.trollCount++;
		}

		return "{" & local.citizenCount & "} [" & local.trollCount & "]";

	}

	public string function getRatingsByUser( numeric user_id ) {

		for (i in variables.ratings) {

			if (i.getUserId() EQ arguments.user_id) {

				return (i.getIsCitizen() ? "<strong>[C]</strong>[T]" : "[C]<strong>[T]</strong>");
			}

		}

		return "error";
	}
}