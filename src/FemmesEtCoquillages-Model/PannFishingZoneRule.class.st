Class {
	#name : 'PannFishingZoneRule',
	#superclass : 'CMRule',
	#category : 'FemmesEtCoquillages-Model',
	#package : 'FemmesEtCoquillages-Model'
}

{ #category : 'initialization' }
PannFishingZoneRule >> initialize [

	super initialize.

	conditionBlock := [ :fisher | fisher cell isProtected ].
	methodToInstrument := self methodFor: #fish in: PannFisher.
	actionBlock := [ :fisher | fisher payFine ]
]
