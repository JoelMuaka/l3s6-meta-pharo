Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #Die
}

{ #category : #accessing }
Die >> + aDicable [
	
	^ aDicable sumWithDie: self
]

{ #category : #accessing }
Die >> faces [
	^faces
]

{ #category : #accessing }
Die >> faces: aNumber [
	
	faces := aNumber

]

{ #category : #initialization }
Die >> initialize [
	
	super initialize.
	faces := 6
]

{ #category : #printing }
Die >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' ('.
	aStream print: faces.
	aStream nextPutAll: ')'
]

{ #category : #'as yet unclassified' }
Die >> roll [
	
	| number |
	number := 6 atRandom.
	^ number
]

{ #category : #accessing }
Die >> sumWithDie: aDie [
	
	^ DieHandle new
	  addDie: self;
	  addDie: aDie; yourself
]

{ #category : #accessing }
Die >> sumWithHandle: aDieHandle [
	
	| handle |
	handle := DieHandle  new.
	aDieHandle dice do: [ :each | handle addDie: each ].
	handle addDie: self.
	^ handle
]

{ #category : #accessing }
Die >> withFaces: aNumber [
	"Create and initialize a new die with aNumber faces."
	| instance |
	instance := self.
	instance faces: aNumber.
	^ instance
]
