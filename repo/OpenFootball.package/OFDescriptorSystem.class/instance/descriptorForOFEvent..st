metadata
descriptorForOFEvent: aDescriptor
	| t |
	
	t := self tableNamed: 'EVENTS'.
	aDescriptor table: t.
	self virtualDescriptorForOFObject: aDescriptor with: t. 
	(aDescriptor newMapping: DirectMapping) 
		from: #key type: String to: (t fieldNamed: 'key').
	"#leagueId refers to the primary key for LEAGUES; not mapped, kept as integer."
	(aDescriptor newMapping: DirectMapping) 
		from: #leagueId type: Integer to: (t fieldNamed: 'league_id').
	"#seasonId refers to the primary key for SEASONS; not mapped, kept as integer."	
	(aDescriptor newMapping: DirectMapping) 
		from: #seasonId type: Integer to: (t fieldNamed: 'season_id').
	(aDescriptor newMapping: DirectMapping)	
		from: #startAt type: DateAndTime to: (t fieldNamed: 'start_at').		
	(aDescriptor newMapping: DirectMapping)	
		from: #endAt type: DateAndTime to: (t fieldNamed: 'end_at').		
	(aDescriptor newMapping: DirectMapping)	
		from: #team3 type: Boolean to: (t fieldNamed: 'team3').		
	(aDescriptor newMapping: DirectMapping) 
		from: #sources type: String to: (t fieldNamed: 'sources').
	(aDescriptor newMapping: DirectMapping) 
		from: #config type: String to: (t fieldNamed: 'config').

