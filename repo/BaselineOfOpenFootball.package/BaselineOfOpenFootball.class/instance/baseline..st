baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec 
			package: 'Glorp-SQLite3';
			package: 'OpenFootball' with: [ spec requires: #('Glorp-SQLite3') ]]
