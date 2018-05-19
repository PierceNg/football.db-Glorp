metadata
virtualTableForOFObject: aTable

	(aTable createFieldNamed: 'id' type: platform serial) bePrimaryKey.
	aTable createFieldNamed: 'created_at' type: platform date.
	aTable createFieldNamed: 'updated_at' type: platform date.

	