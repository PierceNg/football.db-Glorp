metadata
tableForASSOCS: aTable
	| linkField |

	self virtualTableForOFObject: aTable.
	aTable createFieldNamed: 'key' type: platform varchar.
	aTable createFieldNamed: 'title' type: platform varchar.
	aTable createFieldNamed: 'since' type: platform integer.
	aTable createFieldNamed: 'web' type: platform varchar.
	linkField := aTable createFieldNamed: 'country_id' type: platform integer.
	aTable addForeignKeyFrom: linkField
		to: ((self tableNamed: 'COUNTRIES') fieldNamed: 'id').
	aTable createFieldNamed: 'national' type: platform boolean.
	aTable createFieldNamed: 'continental' type: platform boolean.
	aTable createFieldNamed: 'intercontinental' type: platform boolean.
	
