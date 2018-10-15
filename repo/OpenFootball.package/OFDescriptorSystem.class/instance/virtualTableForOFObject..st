metadata
virtualTableForOFObject: aTable

	(aTable createFieldNamed: 'id' type: platform serial) bePrimaryKey.
	aTable createFieldNamed: 'created_at' type: platform datetime.
	aTable createFieldNamed: 'updated_at' type: platform datetime.

	