Extension { #name : #Integer }

{ #category : #'*Die' }
Integer >> D10 [

	^ self D: 10
]

{ #category : #'*Die' }
Integer >> D20 [

	^ self D: 20
]

{ #category : #'*Die' }
Integer >> D4 [

	^ self D: 4
]

{ #category : #'*Die' }
Integer >> D6 [

	^ self D: 6
]

{ #category : #'*Die' }
Integer >> D: anInteger [

	| handle |
	handle := DieHandle new.
	self timesRepeat: [handle addDie: (Die new withFaces: anInteger)].
	^ handle
		
]
