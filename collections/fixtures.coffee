@Fixtures = new Meteor.Collection('fixtures');

Schemas.Fixtures = new SimpleSchema
	title:
		type:String
		max: 255

	description:
		type: String
		autoform:
			rows: 5

	eventAt:
		type:Date

	createdAt:
		type: Date
		autoValue: ->
			if this.isInsert
				new Date()

	updatedAt:
		type:Date
		optional:true
		autoValue: ->
			if this.isUpdate
				new Date()

	picture:
		type: String
		autoform:
			afFieldInput:
				type: 'fileUpload'
				collection: 'Attachments'



Fixtures.attachSchema(Schemas.Fixtures)
