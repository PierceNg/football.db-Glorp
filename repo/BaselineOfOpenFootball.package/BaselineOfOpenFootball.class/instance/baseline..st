baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec blessing: #'baseline'.

		spec 
			baseline: 'Glorp-SQLite3' with: [ spec repository: 'github://pharo-rdbms/glorp-sqlite3' ];
			import: 'Glorp-SQLite3'.

		spec	package: 'OpenFootball' with: [ spec requires: #('Glorp-SQLite3') ]]
