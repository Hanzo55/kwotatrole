//Quote
component {

	variables.id = "";
	variables.text = "";
	variables.ratings = ArrayNew(1);

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

/*
	public void function setRatingId( numeric id ) {

		variables.ratingId = arguments.id;
	}

	public numeric function getRatingId() {

		return variables.ratingId;
	}	

	public void function setRating( any rating ) {

		variables.rating = arguments.rating;
	}

	public any function getRating() {

		return variables.rating;
	}

	// GETTERS (calculated)

	public string function getRatings() {

		return "{" & variables.rating.getCitizen() & "} [" & variables.rating.getTroll() & "]";
	}

	public boolean function hasUserRated() {

		return false;

	}
	*/

}