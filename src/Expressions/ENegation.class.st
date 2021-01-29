Class {
	#name : #ENegation,
	#superclass : #EExpression,
	#instVars : [
		'expression'
	],
	#category : #Expressions
}

{ #category : #accessing }
ENegation class >> expression: anExpression [
	^ self new expression: anExpression
]

{ #category : #accessing }
ENegation >> evaluate [
	| d |
	d := expression evaluate.
	^ d negated
]

{ #category : #accessing }
ENegation >> expression: anExpression [
	expression := anExpression
]