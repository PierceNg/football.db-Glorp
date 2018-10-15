metadata
descriptorForOFTeam: aDescriptor
	| t |
	
	t := self tableNamed: 'TEAMS'.
	aDescriptor table: t.
	self virtualDescriptorForOFObject: aDescriptor with: t. 
	(aDescriptor newMapping: DirectMapping) 
		from: #key type: String to: (t fieldNamed: 'key').
	(aDescriptor newMapping: DirectMapping) 
		from: #title type: String to: (t fieldNamed: 'title').
	(aDescriptor newMapping: DirectMapping) 
		from: #title2 type: String to: (t fieldNamed: 'title2').
	(aDescriptor newMapping: DirectMapping) 
		from: #synonyms type: String to: (t fieldNamed: 'synonyms').
	(aDescriptor newMapping: OneToOneMapping)	
		attributeName: #country;
		referenceClass: OFCountry.		
	"#cityId refers to the primary key for CITIES; not mapped, kept as integer."
	(aDescriptor newMapping: DirectMapping) 
		from: #cityId type: Integer to: (t fieldNamed: 'city_id').
	(aDescriptor newMapping: DirectMapping)	
		from: #club type: Boolean to: (t fieldNamed: 'club').		
	(aDescriptor newMapping: DirectMapping) 
		from: #since type: Integer to: (t fieldNamed: 'since').
	(aDescriptor newMapping: DirectMapping) 
		from: #address type: String to: (t fieldNamed: 'address').
	(aDescriptor newMapping: DirectMapping)
		from: #web type: String to: (t fieldNamed: 'web').
	(aDescriptor newMapping: OneToOneMapping)	
		attributeName: #association;
		referenceClass: OFAssociation.		
	(aDescriptor newMapping: DirectMapping)	
		from: #national type: Boolean to: (t fieldNamed: 'national').		

