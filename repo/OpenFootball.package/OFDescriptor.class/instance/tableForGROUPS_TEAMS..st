metadata
tableForGROUPS_TEAMS: aTable
	| gid tid |
	
	self virtualTableForOFObject: aTable.
	gid := aTable createFieldNamed: 'group_id' type: platform integer.
	aTable addForeignKeyFrom: gid to: ((self tableNamed: 'GROUPS') fieldNamed: 'id').
	tid := aTable createFieldNamed: 'team_id' type: platform integer.
	aTable addForeignKeyFrom: tid to: ((self tableNamed: 'TEAMS') fieldNamed: 'id').
	

	