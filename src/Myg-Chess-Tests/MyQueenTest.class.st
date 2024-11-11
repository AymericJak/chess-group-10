Class {
	#name : 'MyQueenTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyQueenTest >> testId [

	self assert: MyQueen new id equals: 'Q'
]

{ #category : 'tests' }
MyQueenTest >> testRenderPieceOn [

	| whiteQueen blackQueen |
	whiteQueen := MyQueen white.
	blackQueen := MyQueen black.

	self
		assert: (whiteQueen renderPieceOn: MyChessSquare black)
		equals: 'q'.
	self
		assert: (whiteQueen renderPieceOn: MyChessSquare white)
		equals: 'Q'.

	self
		assert: (blackQueen renderPieceOn: MyChessSquare black)
		equals: 'w'.
	self
		assert: (blackQueen renderPieceOn: MyChessSquare white)
		equals: 'W'
]
