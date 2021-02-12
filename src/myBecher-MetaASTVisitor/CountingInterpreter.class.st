Class {
	#name : #CountingInterpreter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #'myBecher-MetaASTVisitor'
}

{ #category : #initialization }
CountingInterpreter >> initialize [
	super initialize.
	count := 0.
]

{ #category : #initialization }
CountingInterpreter >> visitMessageNode: aMessageNode [
	super visitMessageNode: aMessageNode.
	count := count + 1.
]
