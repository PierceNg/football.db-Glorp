metadata
classModelForOFCountry: aClassModel

	self virtualClassModelForOFObject: aClassModel.
	aClassModel newAttributeNamed: #countryName type: String.
	aClassModel newAttributeNamed: #slug type: String.
	aClassModel newAttributeNamed: #key type: String.
	aClassModel newAttributeNamed: #place type: OFPlace.
	aClassModel newAttributeNamed: #code type: String.
	aClassModel newAttributeNamed: #alternateNames type: String.
	aClassModel newAttributeNamed: #historicalNames type: String.
	aClassModel newAttributeNamed: #population type: Integer.
	aClassModel newAttributeNamed: #area type: Integer.
	aClassModel newAttributeNamed: #continent type: OFContinent.
	"#countryId refers to the primary key for COUNTRY_CODES; not mapped, kept as integer."
	aClassModel newAttributeNamed: #countryId type: Integer.
	aClassModel newAttributeNamed: #s type: Boolean.
	aClassModel newAttributeNamed: #c type: Boolean.
	aClassModel newAttributeNamed: #d type: Boolean.
	aClassModel newAttributeNamed: #m type: Boolean.
	aClassModel newAttributeNamed: #motor type: String.
	aClassModel newAttributeNamed: #alpha2 type: String.
	aClassModel newAttributeNamed: #alpha3 type: String.
	aClassModel newAttributeNamed: #num type: String.
	aClassModel newAttributeNamed: #fifa type: String.
	aClassModel newAttributeNamed: #ioc type: String.
	aClassModel newAttributeNamed: #fips type: String.
	aClassModel newAttributeNamed: #net type: String.
	aClassModel newAttributeNamed: #wikipedia type: String.
	