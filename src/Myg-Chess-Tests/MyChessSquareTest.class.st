Class {
	#name : 'MyChessSquareTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyChessSquareTest >> testRenderBishop [

	| whiteBishop blackBishop |
	whiteBishop := MyBishop white.
	blackBishop := MyBishop black.

	self assert: (MyChessSquare black renderBishop: whiteBishop) equals: 'b'.
	self assert: (MyChessSquare white renderBishop: whiteBishop) equals: 'B'.

	self assert: (MyChessSquare black renderBishop: blackBishop) equals: 'v'.
	self assert: (MyChessSquare white renderBishop: blackBishop) equals: 'V'
]

{ #category : 'tests' }
MyChessSquareTest >> testRenderKing [

	| whiteKing blackKing |

	whiteKing := MyKing white.
	blackKing := MyKing black.

	self assert: (MyChessSquare black renderKing: whiteKing) equals: 'k'.
	self assert: (MyChessSquare white renderKing: whiteKing) equals: 'K'.
	
	self assert: (MyChessSquare black renderKing: blackKing) equals: 'l'.
	self assert: (MyChessSquare white renderKing: blackKing) equals: 'L'.
]

{ #category : 'tests' }
MyChessSquareTest >> testRenderKnight [

	| whiteKnight blackKnight |
	whiteKnight := MyKnight white.
	blackKnight := MyKnight black.

	self
		assert: (MyChessSquare black renderKnight: whiteKnight)
		equals: 'n'.
	self
		assert: (MyChessSquare white renderKnight: whiteKnight)
		equals: 'N'.

	self
		assert: (MyChessSquare black renderKnight: blackKnight)
		equals: 'm'.
	self
		assert: (MyChessSquare white renderKnight: blackKnight)
		equals: 'M'
]

{ #category : 'tests' }
MyChessSquareTest >> testRenderPawn [

	| whitePawn blackPawn |
	whitePawn := MyPawn white.
	blackPawn := MyPawn black.

	self assert: (MyChessSquare black renderPawn: whitePawn) equals: 'p'.
	self assert: (MyChessSquare white renderPawn: whitePawn) equals: 'P'.

	self assert: (MyChessSquare black renderPawn: blackPawn) equals: 'o'.
	self assert: (MyChessSquare white renderPawn: blackPawn) equals: 'O'
]

{ #category : 'tests' }
MyChessSquareTest >> testRenderQueen [

	| whiteQueen blackQueen |

	whiteQueen := MyQueen white.
	blackQueen := MyQueen black.

	self assert: (MyChessSquare black renderQueen: whiteQueen) equals: 'q'.
	self assert: (MyChessSquare white renderQueen: whiteQueen) equals: 'Q'.
	
	self assert: (MyChessSquare black renderQueen: blackQueen) equals: 'w'.
	self assert: (MyChessSquare white renderQueen: blackQueen) equals: 'W'.
]

{ #category : 'tests' }
MyChessSquareTest >> testRenderRook [

	| whiteRook blackRook |

	whiteRook := MyRook white.
	blackRook := MyRook black.

	self assert: (MyChessSquare black renderRook: whiteRook) equals: 'r'.
	self assert: (MyChessSquare white renderRook: whiteRook) equals: 'R'.
	
	self assert: (MyChessSquare black renderRook: blackRook) equals: 't'.
	self assert: (MyChessSquare white renderRook: blackRook) equals: 'T'.
]
