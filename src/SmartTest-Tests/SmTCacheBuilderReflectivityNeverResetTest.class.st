"
These tests are here to assert that the build cache methods are correct when dealing the Reflectivity strategy and the never reset cache.
"
Class {
	#name : #SmTCacheBuilderReflectivityNeverResetTest,
	#superclass : #SmTCacheBuilderReflectivityTest,
	#category : #'SmartTest-Tests-CacheBuilder'
}

{ #category : #initialization }
SmTCacheBuilderReflectivityNeverResetTest >> cacheStrategy [
^ SmTBasicCacheNeverResetStrategy 
]