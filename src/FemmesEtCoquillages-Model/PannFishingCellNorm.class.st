Class {
	#name : 'PannFishingCellNorm',
	#superclass : 'CMNorm',
	#category : 'FemmesEtCoquillages-Model-Norms',
	#package : 'FemmesEtCoquillages-Model',
	#tag : 'Norms'
}

{ #category : 'api - rules' }
PannFishingCellNorm >> action [

	^ self methodFor: #fish in: PannFisher
]

{ #category : 'api - rules' }
PannFishingCellNorm >> condition: fisher [

	^ fisher cell isProtected
]

{ #category : 'api - rules' }
PannFishingCellNorm >> consequence: fisher [

	fisher payFine
]

{ #category : 'accessing' }
PannFishingCellNorm >> name [

	^ 'Fishing in forbidden zones'
]

{ #category : 'accessing' }
PannFishingCellNorm >> probability [

	^ 0.1
]
