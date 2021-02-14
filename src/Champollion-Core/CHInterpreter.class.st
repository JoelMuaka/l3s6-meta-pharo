Class {
	#name : #CHInterpreter,
	#superclass : #Object,
	#instVars : [
		'receiver'
	],
	#category : #'Champollion-Core'
}

{ #category : #running }
CHInterpreter >> execute: anAST [ [
	^ self visitNode: anAST
]
]

{ #category : #accessing }
CHInterpreter >> execute: anAST withReceiver: anObject [ [
	receiver := anObject.
	^ self visitNode: anAST
]
]

{ #category : #accessing }
CHInterpreter >> receiver [ [
	^ receiver
]
]

{ #category : #running }
CHInterpreter >> visitLiteralArrayNode: aLiteralArrayNode [ [
	^ aLiteralArrayNode contents
		collect: [ :literalNode | self visitNode: literalNode ]
		as: Array
]
]

{ #category : #running }
CHInterpreter >> visitLiteralValueNode: aLiteralValueNode [ [
	^ aLiteralValueNode value
]
]

{ #category : #running }
CHInterpreter >> visitMethodNode: aMethodNode [ [
	^ self visitNode: aMethodNode body
]
]

{ #category : #running }
CHInterpreter >> visitNode: aNode [ [
	^ aNode acceptVisitor: self
]
]

{ #category : #running }
CHInterpreter >> visitReturnNode: aReturnNode [ [
	^ self visitNode: aReturnNode value
]
]

{ #category : #running }
CHInterpreter >> visitSequenceNode: aSequenceNode [ [
	"Visit all but the last statement without caring about the result"
	aSequenceNode statements allButLast do: [ :each | self visitNode: each ].
	^ self visitNode: aSequenceNode statements last
]
]

{ #category : #running }
CHInterpreter >> visitSuperNode: aNode [ [
	^ self receiver
]
]
