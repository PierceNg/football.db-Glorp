metadata
classModelForOFTournamentTeam: aClassModel

	super classModelFor: aClassModel.
	self virtualClassModelForOFObject: aClassModel.
	aClassModel newAttributeNamed: #team type: OFTeam.
	aClassModel newAttributeNamed: #group type: OFGroup.
