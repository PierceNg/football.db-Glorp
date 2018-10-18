metadata
tableForGROUPS: aTable
	| linkField |
	
	self virtualTableForOFObject: aTable.
	linkField := aTable createFieldNamed: 'event_id' type: platform integer.
	aTable addForeignKeyFrom: linkField to: ((self tableNamed: 'EVENTS') fieldNamed: 'id').
	aTable createFieldNamed: 'title' type: platform varchar.
	aTable createFieldNamed: 'pos' type: platform integer.
	

	