App.QuotesRoute = Ember.Route.extend({
 	model: function() {
 		return App.Quote.find();
 	}
});