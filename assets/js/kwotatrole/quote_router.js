App.QuoteRoute = Ember.Route.extend({
 	model: function(params) {
 		return App.Quote.find(params.id);
 	}
});