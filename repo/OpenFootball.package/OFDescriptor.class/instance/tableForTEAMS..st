metadata
tableForTEAMS: aTable
	
	self virtualTableForOFObject: aTable.
	aTable createFieldNamed: 'key' type: platform varchar.
	aTable createFieldNamed: 'title' type: platform varchar.
	aTable createFieldNamed: 'title2' type: platform varchar.
	aTable createFieldNamed: 'synonyms' type: platform varchar.
	"XXX Next two are foreign keys into COUNTRIES and CITIES; currently not modeled as such."
	aTable createFieldNamed: 'country_id' type: platform integer.
	aTable createFieldNamed: 'city_id' type: platform integer.
	aTable createFieldNamed: 'club' type: platform boolean.
	aTable createFieldNamed: 'since' type: platform integer.
	aTable createFieldNamed: 'address' type: platform varchar.
	aTable createFieldNamed: 'web' type: platform varchar.
	"XXX Next one is a foreign key into ASSOCS; currently not modeled as such."
	aTable createFieldNamed: 'assoc_id' type: platform integer.
	aTable createFieldNamed: 'national' type: platform boolean.

	