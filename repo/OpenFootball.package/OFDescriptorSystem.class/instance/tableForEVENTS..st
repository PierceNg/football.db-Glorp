metadata
tableForEVENTS: aTable

	self virtualTableForOFObject: aTable.
	aTable createFieldNamed: 'key' type: platform varchar.
	aTable createFieldNamed: 'league_id' type: platform integer.
	aTable createFieldNamed: 'season_id' type: platform integer.
	aTable createFieldNamed: 'start_at' type: platform date.
	aTable createFieldNamed: 'end_at' type: platform date.
	aTable createFieldNamed: 'team3' type: platform boolean.
	aTable createFieldNamed: 'sources' type: platform varchar.
	aTable createFieldNamed: 'config' type: platform varchar.
	

	