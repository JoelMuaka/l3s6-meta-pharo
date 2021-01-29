Class {
	#name : #EAddition,
	#superclass : #EExpression,
	#instVars : [
		'left',
		'right'
	],
	#category : #Expressions
}

{ #category : #'instance creation' }
EAddition class >> fivePlusThree [
	<sampleInstance>
	| ep1 ep2 |
	ep1 := EConstant new value: 5.
	ep2 := EConstant new value: 3.
	^ self new left: ep1 ; right: ep2
]

{ #category : #'instance creation' }
EAddition class >> left: anInteger right: anInteger2 [
	^ self new left: anInteger ; right: anInteger2
]

{ #category : #'public access' }
EAddition >> evaluate [
	| e1 e2|
	e1 := left evaluate.
	e2 := right evaluate.
	^ e1 + e2
]

{ #category : #accessing }
EAddition >> left: anExpression [
	left := anExpression
]

{ #category : #accessing }
EAddition >> negated [
	^ ENegation new expression: self
]

{ #category : #accessing }
EAddition >> printOn: aStream [
	aStream nextPutAll: '( '.
	left printOn: aStream.
	aStream nextPutAll: ' + '.
	right printOn: aStream.
	aStream nextPutAll: ' )'
]

{ #category : #accessing }
EAddition >> right: anExpression [
	right := anExpression
]
