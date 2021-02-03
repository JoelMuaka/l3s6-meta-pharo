Class {
	#name : #DieTest,
	#superclass : #TestCase,
	#category : #Die
}

{ #category : #tests }
DieTest >> testAddTwoDice [

	| hd |
	hd := (Die new withFaces: 6) + (Die new withFaces: 6).
	self assert: hd dice size equals: 2
]

{ #category : #tests }
DieTest >> testAddingADieAndHandle [

	| hd |
	hd := (Die new faces: 6)
		+
		(DieHandle new
			addDie: 6;
			yourself).
		self assert: hd dice size equals: 2
]

{ #category : #tests }
DieTest >> testCreationIsOk [

	self assert: (Die new withFaces: 20) faces equals: 20
]

{ #category : #tests }
DieTest >> testInitializeIsOk [
	self assert: Die new faces equals: 6
]

{ #category : #tests }
DieTest >> testRolling [

	| d |
	d := Die new.
	10 timesRepeat: [ self assert: (d roll between: 1 and: 6)]
]
