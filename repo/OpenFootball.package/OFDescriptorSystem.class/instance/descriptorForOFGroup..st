metadata
descriptorForOFGroup: aDescriptor
	| t |
	
	t := self tableNamed: 'GROUPS'.
	aDescriptor table: t.
	self virtualDescriptorForOFObject: aDescriptor with: t. 
	(aDescriptor newMapping: DirectMapping) from: #eventId type: Integer to: (t fieldNamed: 'event_id').
	(aDescriptor newMapping: DirectMapping) from: #title type: String to: (t fieldNamed: 'title').
	(aDescriptor newMapping: DirectMapping) from: #pos type: Integer to: (t fieldNamed: 'pos').

