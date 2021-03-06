Class {
	#name : #EConstant,
	#superclass : #EExpression,
	#instVars : [
		'value'
	],
	#category : #Expressions
}

{ #category : #accessing }
EConstant class >> constant3 [
	<sampleInstance>
	^ self new value: 3
]

{ #category : #accessing }
EConstant class >> constant5 [
	^ self new value: 5
]

{ #category : #accessing }
EConstant class >> value: anInteger [
	^ self new value: anInteger
]

{ #category : #accessing }
EConstant >> evaluateWith: anObject [
	^value
]

{ #category : #accessing }
EConstant >> negated [
	^ ENegation new expression: self
]

{ #category : #accessing }
EConstant >> printOn: aStream [
	aStream nextPutAll: value printString
]

{ #category : #accessing }
EConstant >> value: anInteger [
	value := anInteger
]
