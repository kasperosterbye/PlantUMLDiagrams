"
!! Purpose
I am a codeblock extender for in-image pillar (see example on class side).

"
Class {
	#name : #SeqPlantUMLPillarExtender,
	#superclass : #Object,
	#category : #'PlantUMLDiagrams-Pillar'
}

{ #category : #'pillar integration' }
SeqPlantUMLPillarExtender class >> plantUMLExample [
	"I am an example of using plantuml inlined in a codeblock"
	<example>
	(PRRichTextComposer  asText:
'!!!PlantUML diagrams 
It is possible to render PlantUML:
[[[language=plantuml
@startuml
actor Bob #red
participant Alice
participant "Log" as L #88AA88

Alice->Bob: Authentication Request
Bob->Alice: Authentication Response
Bob->L: Log transaction
@enduml
]]]
UML - sooo yesterday
') inspect
]

{ #category : #'pillar integration' }
SeqPlantUMLPillarExtender class >> plantumlStylerFor: source [
	"I am a codeblock language extender for pillar rendering. "
	<codeblockStylerFor:'plantuml'>
	| imageUrl |
	imageUrl := PlantUMLBridge  pngFromSource: source.
	^PRCodeblokStylerExtensions loadExternalImageFromURL: imageUrl errorText: 'PlantUML error'.
]
