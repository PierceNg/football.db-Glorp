metadata
classModelForOFEvent: aClassModel

	self virtualClassModelForOFObject: aClassModel.
	aClassModel newAttributeNamed: #key type: String.
	"#leagueId refers to the primary key for LEAGUES; not mapped, kept as integer."
	aClassModel newAttributeNamed: #leagueId type: Integer.
	"#seasonId refers to the primary key for SEASONS; not mapped, kept as integer."
	aClassModel newAttributeNamed: #seasonId type: Integer.
	aClassModel newAttributeNamed: #startAt type: DateAndTime.
	aClassModel newAttributeNamed: #endAt type: DateAndTime.
	aClassModel newAttributeNamed: #team3 type: Boolean.
	aClassModel newAttributeNamed: #sources type: String.
	aClassModel newAttributeNamed: #config type: String.

	