API
session
	^ dbSess ifNil: [ dbSess := self openDatabaseSession ] 