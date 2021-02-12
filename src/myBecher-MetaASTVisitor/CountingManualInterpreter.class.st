Class {
	#name : #CountingManualInterpreter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #'myBecher-MetaASTVisitor'
}

{ #category : #visiting }
CountingManualInterpreter >> visitArrayNode: aRBArrayNode [
	^ self
]

{ #category : #visiting }
CountingManualInterpreter >> visitAssignmentNode: anAssignmentNode [
	anAssignmentNode value acceptVisitor: self
]

{ #category : #visiting }
CountingManualInterpreter >> visitLiteralValueNode: aRBLiteralValueNode [
	^ self
]

{ #category : #visiting }
CountingManualInterpreter >> visitMessageNode: aRBMessageNode [
	count := count + 1.
	aRBMessageNode receiver acceptVisitor: self.
	aRBMessageNode arguments do: [ :each | each acceptVisitor: self ]
]

{ #category : #visiting }
CountingManualInterpreter >> visitMethodNode: aMethodNode [
	aMethodNode statements do: [ :each | each acceptVisitor: self ]
]

{ #category : #visiting }
CountingManualInterpreter >> visitSelfNode: aRBMethodNode [
	^ self
]

{ #category : #visiting }
CountingManualInterpreter >> visitVariableNode: aRBVariableNode [
	^ self
]
