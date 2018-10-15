metadata
tableForCONTINENTS: aTable
	| linkField |

	self virtualTableForOFObject: aTable.
	aTable createFieldNamed: 'name' type: platform varchar.
	aTable createFieldNamed: 'slug' type: platform varchar.
	aTable createFieldNamed: 'key' type: platform varchar.
	linkField := aTable createFieldNamed: 'place_id' type: platform integer.
	aTable addForeignKeyFrom: linkField
		to: ((self tableNamed: 'PLACES') fieldNamed: 'id').
	aTable createFieldNamed: 'alt_names' type: platform varchar.
	
