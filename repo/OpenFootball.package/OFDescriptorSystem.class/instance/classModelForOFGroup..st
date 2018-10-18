metadata
classModelForOFGroup: aClassModel

	self virtualClassModelForOFObject: aClassModel.
	aClassModel newAttributeNamed: #event type: OFEvent.
	aClassModel newAttributeNamed: #title type: String.
	aClassModel newAttributeNamed: #pos type: Integer.
	aClassModel newAttributeNamed: #teams collectionOf: OFTeam.
	