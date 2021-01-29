Class {
	#name : #EMultiplication,
	#superclass : #EExpression,
	#instVars : [
		'left',
		'right'
	],
	#category : #Expressions
}

{ #category : #'instance creation' }
EMultiplication class >> fiveTimesThree [
	<sampleInstance>
	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	^ self new left: ep1 ; right: ep2
]

{ #category : #'instance creation' }
EMultiplication class >> left: anExp right: anExp2 [
	^ self new left: anExp ; right: anExp2
]

{ #category : #accessing }
EMultiplication >> evaluate [
	| e1 e2|
	e1 := left evaluate.
	e2 := right evaluate.
	^ e1 * e2
]

{ #category : #accessing }
EMultiplication >> left: anExpression [
	left := anExpression
]

{ #category : #accessing }
EMultiplication >> negated [
	^ ENegation new expression: self
]

{ #category : #accessing }
EMultiplication >> right: anExpression [
	right := anExpression
]
