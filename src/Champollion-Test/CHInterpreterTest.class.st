Class {
	#name : #CHInterpreterTest,
	#superclass : #TestCase,
	#category : #'Champollion-Test'
}

{ #category : #tests }
CHInterpreterTest >> executeSelector: aSymbol [
	^ self executeSelector: aSymbol withReceiver: nil
]

{ #category : #tests }
CHInterpreterTest >> executeSelector: aSymbol withReceiver:aReceiver [
	| ast |
	ast := (CHInterpretable >> aSymbol) parseTree.
	^ self interpreter execute: ast withReceiver: aReceiver
]

{ #category : #tests }
CHInterpreterTest >> interpreter [
	^ CHInterpreter new
]

{ #category : #tests }
CHInterpreterTest >> testReturnBoolean [
	"Do not use deny: to make explicit that we expect the value false"
	self
		assert: (self executeSelector: #returnBoolean)
		equals: false
]

{ #category : #tests }
CHInterpreterTest >> testReturnEmptyLiteralArray [
	self
		assert: (self executeSelector: #returnEmptyLiteralArray)
		equals: #()
]

{ #category : #tests }
CHInterpreterTest >> testReturnFloat [
	self
		assert: (self executeSelector: #returnFloat)	
		equals: 3.14
]

{ #category : #tests }
CHInterpreterTest >> testReturnInteger [
	self
		assert: (self executeSelector: #returnInteger)	
		equals: 5
]

{ #category : #tests }
CHInterpreterTest >> testReturnRecursiveLiteralArray [
	self
		assert: (self executeSelector: #returnRecursiveLiteralArray)
		equals: #(true 1 #('ahah'))
]

{ #category : #tests }
CHInterpreterTest >> testReturnSelf [
	| receiver |
	receiver := Object new.
	"Convey our intention of checking identity by using an explicitidentity check"
	self
		assert: (self executeSelector: #returnSelf withReceiver: receiver)
		identicalTo: receiver
]

{ #category : #tests }
CHInterpreterTest >> testReturnSuper [
	| receiver |
	receiver := Object new.
	"Convey our intention of checking identity by using an explicitidentity check"
	self assert: (self
		executeSelector: #returnSuper
		withReceiver: receiver)== receiver
]
