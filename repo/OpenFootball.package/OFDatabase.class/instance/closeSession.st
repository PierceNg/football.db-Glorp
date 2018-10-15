API
closeSession

	dbSess ifNotNil: [
		dbSess logout.
		dbSess := nil ]