metadata
descriptorForOFTournamentTeam: aDescriptor
	| t |
	
	t := self tableNamed: 'GROUPS_TEAMS'.
	aDescriptor table: t.
	self virtualDescriptorForOFObject: aDescriptor with: t. 
	(aDescriptor newMapping: OneToOneMapping) attributeName: #team.
	(aDescriptor newMapping: OneToOneMapping) attributeName: #group.

