Class {
	#name : #DieHandleTest,
	#superclass : #TestCase,
	#category : #Die
}

{ #category : #tests }
DieHandleTest >> testAddingAnHandleWithADie [

	| handle res |
	handle := DieHandle new
		addDie: (Die new withFaces: 6);
		addDie: (Die new withFaces: 10);
		yourself.
	res := handle + (Die new withFaces: 20).
	self assert: res diceNumber equals: 3
]

{ #category : #tests }
DieHandleTest >> testAddingTwiceTheSameDice [
	| handle |
	handle := DieHandle new.
	handle addDie: (Die new withFaces: 6).
	self assert: handle diceNumber equals: 1.
	handle addDie: (Die new withFaces: 6).
	self assert: handle diceNumber equals: 2
]

{ #category : #tests }
DieHandleTest >> testCreationAdding [

	| handle |
	handle := DieHandle new
		addDie: (Die new withFaces: 6);
		addDie: (Die new withFaces: 10);
		yourself.
	self assert: handle diceNumber equals: 2.
]

{ #category : #tests }
DieHandleTest >> testRoll [

	| handle |
	handle := DieHandle new.
	handle addDie: (Die new).
	handle addDie: (Die new).
	10 timesRepeat: [ self assert: (handle roll between: 2 and: 12)]
]

{ #category : #tests }
DieHandleTest >> testSimpleHandle [
	
	self assert: 2 D20 diceNumber equals: 2.
]

{ #category : #tests }
DieHandleTest >> testSumming [
	| handle |
	handle := 2 D20 + 3 D10.
	self assert: handle diceNumber equals: 5
]
