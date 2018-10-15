metadata
descriptorForOFAssociation: aDescriptor
	| t |
	
	t := self tableNamed: 'ASSOCS'.
	aDescriptor table: t.
	self virtualDescriptorForOFObject: aDescriptor with: t. 
	(aDescriptor newMapping: DirectMapping) 
		from: #key type: String to: (t fieldNamed: 'key').
	(aDescriptor newMapping: DirectMapping) 
		from: #title type: String to: (t fieldNamed: 'title').
	(aDescriptor newMapping: DirectMapping) 
		from: #since type: Integer to: (t fieldNamed: 'since').
	(aDescriptor newMapping: DirectMapping) 
		from: #web type: String to: (t fieldNamed: 'web').
	(aDescriptor newMapping: OneToOneMapping)	
		attributeName: #country; 
		referenceClass: OFCountry.		
	(aDescriptor newMapping: DirectMapping) 
		from: #national type: Boolean to: (t fieldNamed: 'national').
	(aDescriptor newMapping: DirectMapping) 
		from: #continental type: Boolean to: (t fieldNamed: 'continental').
	(aDescriptor newMapping: DirectMapping) 
		from: #interContinental type: Boolean to: (t fieldNamed: 'intercontinental').

