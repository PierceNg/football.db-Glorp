metadata
classModelForOFPlace: aClassModel

	self virtualClassModelForOFObject: aClassModel.
	aClassModel newAttributeNamed: #placeName type: String.
	aClassModel newAttributeNamed: #kind type: String.
	aClassModel newAttributeNamed: #latitude type: Float.
	aClassModel newAttributeNamed: #longitude type: Float.
	