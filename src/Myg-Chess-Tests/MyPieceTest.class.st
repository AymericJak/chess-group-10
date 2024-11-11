Class {
	#name : 'MyPieceTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPieceTest >> testId [

	self assert: MyPiece new id equals: 'Q'
]

{ #category : 'tests' }
MyPieceTest >> testIsPiece [

	self assert: MyPiece new isPiece equals: true
]
