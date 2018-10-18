API
evaluate: aBlock dbFileName: aDbFileName
	| inst |
	
	inst := self new.
	inst dbFileName: aDbFileName;
		initializeGlorp.
	inst session accessor logging: true.
	[ ^ aBlock value: inst ] ensure: [ inst closeSession ]