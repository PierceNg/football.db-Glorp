metadata
classModelForOFEvent: aClassModel

	super classModelFor: aClassModel.
	self virtualClassModelForOFObject: aClassModel.
	aClassModel newAttributeNamed: #key type: String.
	aClassModel newAttributeNamed: #leagueId type: Integer.
	aClassModel newAttributeNamed: #seasonId type: Integer.
	aClassModel newAttributeNamed: #startAt type: Date.
	aClassModel newAttributeNamed: #endAt type: Date.
	aClassModel newAttributeNamed: #team3 type: Boolean.
	aClassModel newAttributeNamed: #sources type: String.
	aClassModel newAttributeNamed: #config type: String.

	