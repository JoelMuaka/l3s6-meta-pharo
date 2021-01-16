Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #'Counter-Tests'
}

{ #category : #tests }
CounterTest >> testAlternateCreationMethod [
	| c |
	c := Counter new withValue: 19.
	self assert: (c increment ; count) equals: 20
]

{ #category : #tests }
CounterTest >> testCountIsSetAndRead [
	| c |
	c := Counter new.
	c count: 7.
	self assert: c count equals: 7
]

{ #category : #tests }
CounterTest >> testDecrement [
	| c |
	c := Counter new.
	c count: 2.
	c decrement ; decrement.
	self assert: c count equals: 0
]

{ #category : #tests }
CounterTest >> testIncrement [
	| c |
	c := Counter new.
	c count: 2.
	c increment ; increment.
	self assert: c count equals: 4
]

{ #category : #tests }
CounterTest >> testInitiative [
	| c |
	c := Counter new.
	self assert: c count equals: 0
]

{ #category : #tests }
CounterTest >> testValueAtCreationTimeIsZero [
	self assert: Counter new count equals: 0
]
