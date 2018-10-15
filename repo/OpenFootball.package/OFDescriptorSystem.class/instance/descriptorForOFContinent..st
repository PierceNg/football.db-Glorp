metadata
descriptorForOFContinent: aDescriptor
	| t |
	
	t := self tableNamed: 'CONTINENTS'.
	aDescriptor table: t.
	self virtualDescriptorForOFObject: aDescriptor with: t. 
	(aDescriptor newMapping: DirectMapping) 
		from: #continentName type: String to: (t fieldNamed: 'name').
	(aDescriptor newMapping: DirectMapping) 
		from: #slug type: String to: (t fieldNamed: 'slug').
	(aDescriptor newMapping: DirectMapping) 
		from: #key type: String to: (t fieldNamed: 'key').
	(aDescriptor newMapping: OneToOneMapping)	
		attributeName: #place; 
		referenceClass: OFPlace.		
	(aDescriptor newMapping: DirectMapping) 
		from: #alternateNames type: String to: (t fieldNamed: 'alt_names').

