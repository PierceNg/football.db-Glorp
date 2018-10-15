metadata
descriptorForOFCountry: aDescriptor
	| t |
	
	t := self tableNamed: 'COUNTRIES'.
	aDescriptor table: t.
	self virtualDescriptorForOFObject: aDescriptor with: t. 
	(aDescriptor newMapping: DirectMapping) 
		from: #countryName type: String to: (t fieldNamed: 'name').
	(aDescriptor newMapping: DirectMapping) 
		from: #slug type: String to: (t fieldNamed: 'slug').
	(aDescriptor newMapping: DirectMapping) 
		from: #key type: String to: (t fieldNamed: 'key').
	(aDescriptor newMapping: OneToOneMapping)	
		attributeName: #place;
		referenceClass: OFPlace.		
	(aDescriptor newMapping: DirectMapping) 
		from: #code type: String to: (t fieldNamed: 'code').
	(aDescriptor newMapping: DirectMapping) 
		from: #alternateNames type: String to: (t fieldNamed: 'alt_names').
	(aDescriptor newMapping: DirectMapping) 
		from: #historicalNames type: String to: (t fieldNamed: 'hist_names').
	(aDescriptor newMapping: DirectMapping) 
		from: #population type: Integer to: (t fieldNamed: 'pop').
	(aDescriptor newMapping: DirectMapping) 
		from: #area type: Integer to: (t fieldNamed: 'area').
	(aDescriptor newMapping: OneToOneMapping)	
		attributeName: #continent;
		referenceClass: OFContinent.		
	"#countryId refers to the primary key for COUNTRY_CODES; not mapped, kept as integer."
	(aDescriptor newMapping: DirectMapping) 
		from: #countryId type: Integer to: (t fieldNamed: 'country_id').
	(aDescriptor newMapping: DirectMapping) 
		from: #s type: Boolean to: (t fieldNamed: 's').
	(aDescriptor newMapping: DirectMapping) 
		from: #c type: Boolean to: (t fieldNamed: 'c').
	(aDescriptor newMapping: DirectMapping) 
		from: #d type: Boolean to: (t fieldNamed: 'd').
	(aDescriptor newMapping: DirectMapping) 
		from: #m type: Boolean to: (t fieldNamed: 'm').
	(aDescriptor newMapping: DirectMapping) 
		from: #motor type: String to: (t fieldNamed: 'motor').
	(aDescriptor newMapping: DirectMapping) 
		from: #alpha2 type: String to: (t fieldNamed: 'alpha2').
	(aDescriptor newMapping: DirectMapping) 
		from: #alpha3 type: String to: (t fieldNamed: 'alpha3').
	(aDescriptor newMapping: DirectMapping) 
		from: #num type: String to: (t fieldNamed: 'num').
	(aDescriptor newMapping: DirectMapping) 
		from: #fifa type: String to: (t fieldNamed: 'fifa').
	(aDescriptor newMapping: DirectMapping) 
		from: #ioc type: String to: (t fieldNamed: 'ioc').
	(aDescriptor newMapping: DirectMapping) 
		from: #fips type: String to: (t fieldNamed: 'fips').
	(aDescriptor newMapping: DirectMapping) 
		from: #net type: String to: (t fieldNamed: 'net').
	(aDescriptor newMapping: DirectMapping) 
		from: #wikipedia type: String to: (t fieldNamed: 'wikipedia').

