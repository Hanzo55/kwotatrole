Kwotatrole.Router.map(function() {
	this.resource('main', { path: '/' });
});

Kwotatrole.QuotesRoute = Ember.Route.extend({
	model: function() {
		return Kwotatrole.Quotes.find();
	}
});