Class {
	#name : 'PannPlot',
	#superclass : 'CMCell',
	#instVars : [
		'state',
		'isProtected'
	],
	#category : 'FemmesEtCoquillages-Model',
	#package : 'FemmesEtCoquillages-Model'
}

{ #category : 'state changing' }
PannPlot >> beMangrove [

	state := #mangrove
]

{ #category : 'state changing' }
PannPlot >> beMudflat [

	state := #mudflat
]

{ #category : 'state changing' }
PannPlot >> beProtected [

	isProtected := true
]

{ #category : 'state changing' }
PannPlot >> beSea [

	state := #sea
]

{ #category : 'state changing' }
PannPlot >> beVillage [

	state := #village
]

{ #category : 'initialization' }
PannPlot >> initialize [ 

	super initialize.
	isProtected := false
]

{ #category : 'state changing' }
PannPlot >> isMangrove [

	^ state = #mangrove
]

{ #category : 'state changing' }
PannPlot >> isMudflat [

	^ state = #mudflat
]

{ #category : 'accessing' }
PannPlot >> isProtected [

	^ isProtected
]

{ #category : 'state changing' }
PannPlot >> isSea [

	^ state = #sea
]

{ #category : 'state changing' }
PannPlot >> isVillage [

	^ state = #village
]

{ #category : 'pov' }
PannPlot >> pov [ 

	<pov>
	
	| pov |
	pov := CMPointOfView new.
	
	self isProtected ifTrue: [ pov borderColor: Color red ].
	
	state = #sea ifTrue: [ pov color: '70EAFF' ].
	state = #village ifTrue: [ pov color: '8F1437' ].
	state = #mudflat ifTrue: [ pov color: 'FFFCB3' ].
	state = #mangrove ifTrue: [ pov color: '0DB370' ].
	
	^ pov
]

{ #category : 'accessing' }
PannPlot >> sare [
    "Return a sare to which this plot belongs"
    ^ self getAggregateType: PannSare
]

{ #category : 'accessing' }
PannPlot >> shellfishPopulation [
	"this method returns you the shellfish population in the cell "

	^ (self occupantsOfClass: PannShellfishPopulation) first. "there can only be 1 population of shellfish on the cell, not more, not 0"
		
]

{ #category : 'accessing' }
PannPlot >> state [

	^ state
]

{ #category : 'accessing' }
PannPlot >> state: anObject [

	state := anObject
]
