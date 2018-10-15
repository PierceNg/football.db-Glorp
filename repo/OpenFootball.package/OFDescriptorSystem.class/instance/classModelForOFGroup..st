metadata
classModelForOFGroup: aClassModel

	super classModelFor: aClassModel.
	self virtualClassModelForOFObject: aClassModel.
	aClassModel newAttributeNamed: #eventId type: Integer.
	aClassModel newAttributeNamed: #title type: String.
	aClassModel newAttributeNamed: #pos type: Integer.
	