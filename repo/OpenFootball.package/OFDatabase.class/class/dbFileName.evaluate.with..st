API
dbFileName: aDbFileName evaluate: aBlock with: arg 
	| inst |
	
	inst := self new.
	inst dbFileName: aDbFileName;
		initializeGlorp.
	inst session accessor logging: true.
	[ ^ aBlock value: inst value: arg ] ensure: [ inst closeSession ]