metadata
classModelForOFAssociation: aClassModel

	self virtualClassModelForOFObject: aClassModel.
	aClassModel newAttributeNamed: #key type: String.
	aClassModel newAttributeNamed: #title type: String.
	aClassModel newAttributeNamed: #since type: Integer.
	aClassModel newAttributeNamed: #web type: String.
	aClassModel newAttributeNamed: #country type: OFCountry.
	aClassModel newAttributeNamed: #national type: Boolean.
	aClassModel newAttributeNamed: #continental type: Boolean.
	aClassModel newAttributeNamed: #interContinental type: Boolean.
	