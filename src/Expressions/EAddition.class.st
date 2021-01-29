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
EAddition >> right: anExpression [
	right := anExpression
]
