running
basicCheck: anEntity
	^ (anEntity isKindOf: CompiledMethod) and: ((super basicCheck: anEntity) and: (SmTActivatedMethodAnalyseSettings activated))