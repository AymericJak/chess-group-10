Class {
	#name : 'MyKingTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyKingTest >> testId [

	self assert: MyKing new id equals: 'K'
]

{ #category : 'tests' }
MyKingTest >> testIsCheckByOpponentsRook [

	| king board |
	board := MyChessBoard empty.
	board at: 'e4' put: (king := MyKing white).

	"Put an atacker rook on e column"
	board at: 'e1' put: MyRook black.

	self assert: king isInCheck
]

{ #category : 'tests' }
MyKingTest >> testIsNotCheckBySameColorRook [

	| king board |
	board := MyChessBoard empty.
	board at: 'e4' put: (king := MyKing white).

	"Put an same color rook on e column"
	board at: 'e1' put: MyRook white.

	self deny: king isInCheck
]

{ #category : 'tests' }
MyKingTest >> testRenderPieceOn [

	| whiteKing blackKing |
	whiteKing := MyKing white.
	blackKing := MyKing black.

	self assert: (whiteKing renderPieceOn: MyChessSquare black) equals: 'k'.
	self assert: (whiteKing renderPieceOn: MyChessSquare white) equals: 'K'.

	self assert: (blackKing renderPieceOn: MyChessSquare black) equals: 'l'.
	self assert: (blackKing renderPieceOn: MyChessSquare white) equals: 'L'
	
]
