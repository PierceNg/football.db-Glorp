metadata
tableForPLACES: aTable

	self virtualTableForOFObject: aTable.
	aTable createFieldNamed: 'name' type: platform varchar.
	aTable createFieldNamed: 'kind' type: platform varchar.
	aTable createFieldNamed: 'lat' type: platform double.
	aTable createFieldNamed: 'lng' type: platform double.
	

	