metadata
classModelForOFContinent: aClassModel

	self virtualClassModelForOFObject: aClassModel.
	aClassModel newAttributeNamed: #continentName type: String.
	aClassModel newAttributeNamed: #slug type: String.
	aClassModel newAttributeNamed: #key type: String.
	aClassModel newAttributeNamed: #place type: OFPlace.
	aClassModel newAttributeNamed: #alternateNames type: String.
	