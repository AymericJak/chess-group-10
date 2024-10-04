Class {
	#name : 'MyKnightTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyKnightTest >> testId [

	self assert: MyKnight new id equals: 'N'
]

{ #category : 'tests' }
MyKnightTest >> testRenderPieceOn [

	| whiteKnight blackKnight |
	whiteKnight := MyKnight white.
	blackKnight := MyKnight black.

	self
		assert: (whiteKnight renderPieceOn: MyChessSquare black)
		equals: 'n'.
	self
		assert: (whiteKnight renderPieceOn: MyChessSquare white)
		equals: 'N'.

	self
		assert: (blackKnight renderPieceOn: MyChessSquare black)
		equals: 'm'.
	self
		assert: (blackKnight renderPieceOn: MyChessSquare white)
		equals: 'M'
]
