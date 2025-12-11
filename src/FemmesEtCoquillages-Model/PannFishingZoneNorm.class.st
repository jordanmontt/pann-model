Class {
	#name : 'PannFishingZoneNorm',
	#superclass : 'CMNorm',
	#category : 'FemmesEtCoquillages-Model',
	#package : 'FemmesEtCoquillages-Model'
}

{ #category : 'api - rules' }
PannFishingZoneNorm >> action [

	^ self methodFor: #fish in: PannFisher
]

{ #category : 'api - rules' }
PannFishingZoneNorm >> condition: fisher [

	^ fisher cell isProtected
]

{ #category : 'api - rules' }
PannFishingZoneNorm >> consequence: fisher [

	fisher payFine
]

{ #category : 'accessing' }
PannFishingZoneNorm >> name [

	^ 'Fishing in forbidden zones'
]
