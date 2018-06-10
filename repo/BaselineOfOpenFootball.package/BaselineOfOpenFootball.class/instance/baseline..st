baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec blessing: #'baseline'.

		spec 
			baseline: 'GlorpSQLite' with: [ spec repository: 'github://pharo-rdbms/glorp-sqlite3' ];
			import: 'GlorpSQLite'.

		spec	package: 'OpenFootball' with: [ spec requires: #('GlorpSQLite') ]]
