metadata
classModelForOFTeam: aClassModel

	super classModelFor: aClassModel.
	self virtualClassModelForOFObject: aClassModel.
	aClassModel newAttributeNamed: #key type: String.
	aClassModel newAttributeNamed: #title type: String.
	aClassModel newAttributeNamed: #title2 type: String.
	aClassModel newAttributeNamed: #synonyms type: String.
	aClassModel newAttributeNamed: #country type: OFCountry.
	"#cityId refers to the primary key for CITIES; not mapped, kept as integer."
	aClassModel newAttributeNamed: #cityId type: Integer.
	aClassModel newAttributeNamed: #club type: Boolean.
	aClassModel newAttributeNamed: #since type: Integer.
	aClassModel newAttributeNamed: #address type: String.
	aClassModel newAttributeNamed: #web type: String.
	aClassModel newAttributeNamed: #association type: OFAssociation.
	aClassModel newAttributeNamed: #national type: Boolean.


	