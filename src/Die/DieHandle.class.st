Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #Die
}

{ #category : #initialization }
DieHandle >> + aDicable [
	
	^ aDicable sumWithHandle: self
]

{ #category : #initialization }
DieHandle >> addDie: aDie [

	self dice add: aDie
]

{ #category : #initialization }
DieHandle >> dice [

	^dice
]

{ #category : #initialization }
DieHandle >> diceNumber [

	^ dice size
]

{ #category : #initialization }
DieHandle >> initialize [
	
	super initialize.
	dice := OrderedCollection new
]

{ #category : #initialization }
DieHandle >> roll [
	
	| numbers |
	numbers := self dice collect: [ :x| x roll ].
	^ numbers sum
]

{ #category : #initialization }
DieHandle >> sumWithDie: aDie [
	
	| handle |
	handle := self class new.
	self dice do: [ :each | handle addDie: each ].
	handle addDie: aDie.
	^ handle
]

{ #category : #initialization }
DieHandle >> sumWithHandle: aDieHandle [
	
	| handle |
	handle := self class new.
	self dice do: [ :each | handle addDie: each ].
	aDieHandle dice do: [ :each | handle addDie: each ].
	^ handle
]
