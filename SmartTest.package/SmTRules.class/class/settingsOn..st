settings
settingsOn: aBuilder
	<systemsettings>
	(aBuilder group: #'SmartTest')
		with: [ (aBuilder group: #SmartFinder)
				with: [ (aBuilder pickOne: #finder)
						label: 'SmartTest finder';
						target: self;
						parent: #SmartFinder;
						domainValues: SmTTestFinderStrategy allSubclasses;
						description: 'The finder defines how CORA searchs the relative test of a method'.
					(aBuilder pickOne: #cacheClass)
						label: 'SmartTest Cache';
						target: self;
						parent: #SmartFinder;
						domainValues: SmTCacheStrategy allSubclasses;
						description:
							'To visualize the current cache
				SmTCacheSettings cache new currentCache'.
					(aBuilder pickOne: #runner)
						label: 'SmartTest test runner';
						target: self;
						parent: #SmartFinder;
						domainValues: SmTRunnerStrategy allSubclasses;
						description: 'The test runner defines if the tests are run in a debug way or not'.
					(aBuilder pickOne: #strategy)
						label: 'SmartTest testing strategy';
						target: self;
						parent: #SmartFinder;
						domainValues: SmTTestingStrategy allSubclasses;
						description: 'The testing strategy defines when SmartTest will run the test it has found.' ].
			(aBuilder group: #SmTActivationRenrakuOption)
				with: [ (aBuilder setting: #activated)
						target: self;
						order: 0.01;
						label: 'SmartTest Reneraku Integration Activated';
						description: 'Toogle to activate/disable the reneraku integration of the plugin' ] ]