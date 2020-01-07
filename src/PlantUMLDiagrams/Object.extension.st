Extension { #name : #Object }

{ #category : #'*PlantUMLDiagrams' }
Object >> openObjectDiagram [
	ObjDiaModel new webbrowseDiagramFor: self
]

{ #category : #'*PlantUMLDiagrams' }
Object >> openObjectDiagramFiltered: filterBlock [
	(ObjDiaModel new buildFilter: filterBlock) webbrowseDiagramFor: self
]
