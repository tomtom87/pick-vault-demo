# These values get propagated through the app
# E.g. The 'name' and 'subtitle' are used in seo.coffee

@Config =

	# Basic Details
	name: 'Pick Vault'
	title: ->
			TAPi18n.__ 'configTitle'
	subtitle: ->
			TAPi18n.__ 'configSubtitle'
	logo: ->
		'<b>' + @name + '</b>'
	footer: ->
		@name + ' - Copyright ' + new Date().getFullYear()

	# Emails
	emails:
		from: 'no-reply@' + Meteor.absoluteUrl()
		contact: 'hello' + Meteor.absoluteUrl()

	# Username - if true, users are forced to set a username
	username: false

	# Localisation
	defaultLanguage: 'en'
	dateFormat: 'D/M/YYYY'

	# Meta / Extenrnal content
	privacyUrl: 'http://pickvault.com/privacy'
	termsUrl: 'http://pickvault.com/terms'

	# For email footers
	legal:
		address: 'Pick-Vault Ltd, 123 Nicosia Cyprus'
		name: 'Pick-Vault'
		url: 'http://pickvault.com'

	about: 'http://meteorfactory.io'
	blog: 'http://learn.meteorfactory.io'

	socialMedia:
		facebook:
			url: 'http://facebook.com/pickvault'
			icon: 'facebook'
		twitter:
			url: 'http://twitter.com/pickvault'
			icon: 'twitter'
		github:
			url: 'http://github.com/pickvault'
			icon: 'github'
		info:
			url: 'http://pickvault.com/info'
			icon: 'link'

	#Routes
	homeRoute: '/'
	publicRoutes: ['home']
	dashboardRoute: '/dashboard'
