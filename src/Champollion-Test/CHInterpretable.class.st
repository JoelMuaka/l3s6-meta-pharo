Class {
	#name : #CHInterpretable,
	#superclass : #Object,
	#category : #'Champollion-Test'
}

{ #category : #'as yet unclassified' }
CHInterpretable >> returnBoolean [
	^ false
]

{ #category : #'as yet unclassified' }
CHInterpretable >> returnEmptyLiteralArray [
	^ #()
]

{ #category : #'as yet unclassified' }
CHInterpretable >> returnFloat [
	^ 3.14
]

{ #category : #'as yet unclassified' }
CHInterpretable >> returnInteger [
	^ 5
]

{ #category : #'as yet unclassified' }
CHInterpretable >> returnRecursiveLiteralArray [
	^ #(true 1 #('ahah'))
]

{ #category : #'as yet unclassified' }
CHInterpretable >> returnSelf [
	^ self
]

{ #category : #'as yet unclassified' }
CHInterpretable >> returnSuper [
	^ super
]

{ #category : #'as yet unclassified' }
CHInterpretable >> visitSelfNode: aNode [
	^ self receiver
]
