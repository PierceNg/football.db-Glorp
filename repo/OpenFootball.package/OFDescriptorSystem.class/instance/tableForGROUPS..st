metadata
tableForGROUPS: aTable
	| eventId |
	
	self virtualTableForOFObject: aTable.
	eventId := aTable createFieldNamed: 'event_id' type: platform integer.
	aTable addForeignKeyFrom: eventId to: ((self tableNamed: 'EVENTS') fieldNamed: 'id').
	aTable createFieldNamed: 'title' type: platform varchar.
	aTable createFieldNamed: 'pos' type: platform integer.
	

	