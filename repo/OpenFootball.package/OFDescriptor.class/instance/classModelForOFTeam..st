metadata
classModelForOFTeam: aClassModel

	super classModelFor: aClassModel.
	self virtualClassModelForOFObject: aClassModel.
	aClassModel newAttributeNamed: #key type: String.
	aClassModel newAttributeNamed: #title type: String.
	aClassModel newAttributeNamed: #title2 type: String.
	aClassModel newAttributeNamed: #synonyms type: String.
	aClassModel newAttributeNamed: #countryId type: Integer.
	aClassModel newAttributeNamed: #cityId type: Integer.
	aClassModel newAttributeNamed: #club type: Boolean.
	aClassModel newAttributeNamed: #since type: Integer.
	aClassModel newAttributeNamed: #address type: String.
	aClassModel newAttributeNamed: #web type: String.
	aClassModel newAttributeNamed: #assocId type: Integer.
	aClassModel newAttributeNamed: #national type: Boolean.


	