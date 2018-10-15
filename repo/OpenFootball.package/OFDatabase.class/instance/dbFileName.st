accessing
dbFileName
	^ dbFileName ifNil: [ self class defaultDatabaseName ]