initialization
setUp
	smartFinder := SmartFinder new
		cacheClass: SmTBasicCacheStrategy new;
		filter: SmTDefaultNullPackagesFilter new;
		testRunner: SmTRunnerStrategyDebug;
		smtFinder: SmTSenderTestFinderStrategy new;
		testingStrategy: SmTTestingStrategyEachModification new;
		shouldTryToFindTestForDynamic: false