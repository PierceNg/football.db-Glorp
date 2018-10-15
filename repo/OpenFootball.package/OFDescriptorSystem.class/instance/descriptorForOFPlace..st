metadata
descriptorForOFPlace: aDescriptor
	| t |
	
	t := self tableNamed: 'PLACES'.
	aDescriptor table: t.
	self virtualDescriptorForOFObject: aDescriptor with: t. 
	(aDescriptor newMapping: DirectMapping) 
		from: #placeName type: String to: (t fieldNamed: 'name').
	(aDescriptor newMapping: DirectMapping) 
		from: #kind type: String to: (t fieldNamed: 'kind').
	(aDescriptor newMapping: DirectMapping) 
		from: #latitude type: Float to: (t fieldNamed: 'lat').
	(aDescriptor newMapping: DirectMapping) 
		from: #longitude type: Float to: (t fieldNamed: 'lng').
