Class {
	#name : #BaselineOfPlantUMLDiagrams,
	#superclass : #BaselineOf,
	#category : #BaselineOfPlantUMLDiagrams
}

{ #category : #baselines }
BaselineOfPlantUMLDiagrams >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'PlantUMLBridge'
					with: [ spec repository: 'github://kasperosterbye/PlantUMLBridge' ];
				package: 'PlantUMLDiagrams' ]
]
