Class {
	#name : #EAddition,
	#superclass : #EBinaryExpression,
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
EAddition >> evaluateWith: anObject [

	^ (right evaluateWith: anObject) + (left evaluateWith: anObject)
]

{ #category : #accessing }
EAddition >> negated [
	^ ENegation new expression: self
]

{ #category : #accessing }
EAddition >> operatorString [
	^ ' + '
]
