Class {
	#name : 'PannFishingZoneRule',
	#superclass : 'CMNorm',
	#category : 'FemmesEtCoquillages-Model',
	#package : 'FemmesEtCoquillages-Model'
}

{ #category : 'initialization' }
PannFishingZoneRule >> initialize [

	super initialize.

	name := 'Fishing in forbidden zones'.
	conditionBlock := [ :fisher | fisher cell isProtected ].
	methodToInstrument := self methodFor: #fish in: PannFisher.
	actionBlock := [ :fisher | fisher payFine ]
]
