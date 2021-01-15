"
Counter is a simple concrete class which supports incrementing anddecrementing a counter.
Its API is
- decrement, increment
- count
Its creation API is message withValue:
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter >> count [
	"return the current value of the value instance variable"
	^ count
]

{ #category : #accessing }
Counter >> count: anInteger [ 
	
	count := anInteger
]
