Kwotatrole.Quote = DS.Model.extend({
	text: DS.attr('string'),
	isArticle: DS.attr('boolean'),
	author: DS.attr('string'),
	sourceTitle: DS.attr('string'),
	sourceUrl: DS.attr('string')
});

Kwotatrole.Quote.FIXTURES = [
	{
		id: 1,
		text: 'It\'s basically World of Warcraft … in 1985.',
		isArticle: true,
		author: 'Jeff Atwood',
		sourceTitle: 'The Organism Will Do Whatever It Damn Well Pleases',
		sourceUrl: 'http://www.codinghorror.com/blog/2012/12/the-organism-will-do-what-it-damn-well-pleases.html'
	},
	{
		id: 2,
		text: 'We\'ve had the technology of the cyberpunk future for a while, and now we have the dystopia as well.',
		isArticle: false,
		author: 'LoganCale',
		sourceTitle: 'Don\'t Even Think of Using Encryption Software to Escape NSA Scrutiny',
		sourceUrl: 'http://www.dailykos.com/story/2013/06/24/1218418/-Don-t-Even-THINK-of-Using-Encryption-Software-to-Escape-NSA-Scrutiny'
	},
	{
		id: 3,
		text: 'Anyone that believes either party will seriously secure the border is a dam fool.',
		isArticle: false,
		author: 'KDC',
		sourceTitle: 'Sarah Palin\'s mind-bogglingly incoherent immigration reform critique',
		sourceUrl: 'http://news.yahoo.com/sarah-palins-mind-bogglingly-incoherent-immigration-reform-critique-105500993.html'
	}
];