App.IndexRoute = Ember.Route.extend({
	setupController: function(controller) {
		controller.set('title', 'My App');
	}
});