Kwotatrole.Router.map(function() {
	this.resource('quotes', { path: '/' });
});

Kwotatrole.QuotesRoute = Ember.Route.extend({
	model: function() {
		return Kwotatrole.Quote.find();
	}
});