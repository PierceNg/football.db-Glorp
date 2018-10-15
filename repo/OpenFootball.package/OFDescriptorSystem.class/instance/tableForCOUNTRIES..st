metadata
tableForCOUNTRIES: aTable
	| linkField |

	self virtualTableForOFObject: aTable.
	aTable createFieldNamed: 'name' type: platform varchar.
	aTable createFieldNamed: 'slug' type: platform varchar.
	aTable createFieldNamed: 'key' type: platform integer.
	linkField := aTable createFieldNamed: 'place_id' type: platform integer.
	aTable addForeignKeyFrom: linkField
		to: ((self tableNamed: 'PLACES') fieldNamed: 'id').
	aTable createFieldNamed: 'code' type: platform varchar.
	aTable createFieldNamed: 'alt_names' type: platform varchar.
	aTable createFieldNamed: 'hist_names' type: platform varchar.
	aTable createFieldNamed: 'pop' type: platform integer.
	aTable createFieldNamed: 'area' type: platform integer.
	linkField := aTable createFieldNamed: 'continent_id' type: platform integer.
	aTable addForeignKeyFrom: linkField
		to: ((self tableNamed: 'CONTINENTS') fieldNamed: 'id').
	"country_id refers to the primary key for COUNTRY_CODES; not mapped, kept as integer."
	aTable createFieldNamed: 'country_id' type: platform integer.
	aTable createFieldNamed: 's' type: platform boolean.
	aTable createFieldNamed: 'c' type: platform boolean.
	aTable createFieldNamed: 'd' type: platform boolean.
	aTable createFieldNamed: 'm' type: platform boolean.	
	aTable createFieldNamed: 'motor' type: platform varchar.
	aTable createFieldNamed: 'alpha2' type: platform varchar.
	aTable createFieldNamed: 'alpha3' type: platform varchar.
	aTable createFieldNamed: 'num' type: platform varchar.
	aTable createFieldNamed: 'fifa' type: platform varchar.
	aTable createFieldNamed: 'ioc' type: platform varchar.
	aTable createFieldNamed: 'fips' type: platform varchar.
	aTable createFieldNamed: 'net' type: platform varchar.
	aTable createFieldNamed: 'wikipedia' type: platform varchar.
