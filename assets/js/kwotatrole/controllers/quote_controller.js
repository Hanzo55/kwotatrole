Kwotatrole.QuoteController = Ember.ObjectController.extend({
	inflection: function() {
		var article = this.get('isArticle');

		return (article === true) ? 'from' : 'on';
	}.property('isArticle')
});