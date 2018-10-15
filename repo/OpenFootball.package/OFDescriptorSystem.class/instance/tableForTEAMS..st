metadata
tableForTEAMS: aTable
	| linkField |
		
	self virtualTableForOFObject: aTable.
	aTable createFieldNamed: 'key' type: platform varchar.
	aTable createFieldNamed: 'title' type: platform varchar.
	aTable createFieldNamed: 'title2' type: platform varchar.
	aTable createFieldNamed: 'synonyms' type: platform varchar.
	linkField := aTable createFieldNamed: 'country_id' type: platform integer.
	aTable addForeignKeyFrom: linkField
		to: ((self tableNamed: 'COUNTRIES') fieldNamed: 'id').
	"city_id refers to primary key into CITIES; not mapped, kept as integer."
	aTable createFieldNamed: 'city_id' type: platform integer.
	aTable createFieldNamed: 'club' type: platform boolean.
	aTable createFieldNamed: 'since' type: platform integer.
	aTable createFieldNamed: 'address' type: platform varchar.
	aTable createFieldNamed: 'web' type: platform varchar.
	linkField := aTable createFieldNamed: 'assoc_id' type: platform integer.
	aTable addForeignKeyFrom: linkField
		to: ((self tableNamed: 'ASSOCS') fieldNamed: 'id').
	aTable createFieldNamed: 'national' type: platform boolean.

	