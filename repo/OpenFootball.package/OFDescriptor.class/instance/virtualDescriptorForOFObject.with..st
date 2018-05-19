metadata
virtualDescriptorForOFObject: aDescriptor with: aTable

	(aDescriptor newMapping: DirectMapping) 
		from: #pid
		to: (aTable fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #createdAt
		type: DateAndTime
		to: (aTable fieldNamed: 'created_at').		
	(aDescriptor newMapping: DirectMapping)
		from: #updatedAt
		type: DateAndTime
		to: (aTable fieldNamed: 'updated_at').		
