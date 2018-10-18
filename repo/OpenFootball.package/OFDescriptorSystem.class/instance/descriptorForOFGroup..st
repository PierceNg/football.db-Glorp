metadata
descriptorForOFGroup: aDescriptor
	| t |
	
	t := self tableNamed: 'GROUPS'.
	aDescriptor table: t.
	self virtualDescriptorForOFObject: aDescriptor with: t. 
	(aDescriptor newMapping: OneToOneMapping) 
		attributeName: #event;
		referenceClass: OFEvent.
	(aDescriptor newMapping: DirectMapping) from: #title type: String to: (t fieldNamed: 'title').
	(aDescriptor newMapping: DirectMapping) from: #pos type: Integer to: (t fieldNamed: 'pos').
	(aDescriptor newMapping: ManyToManyMapping) 
		attributeName: #teams