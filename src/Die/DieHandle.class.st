Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #Die
}

{ #category : #initialization }
DieHandle >> + aDieHandle [
	
	| handle |
	handle := DieHandle new.
	handle dice addAll: self dice.
	handle dice addAll: aDieHandle dice.
	^ handle
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
