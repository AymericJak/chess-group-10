Class {
	#name : 'MyPawnTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPawnTest >> testBlackPawnAfterFirstMove [

	| pawn board |
	board := MyChessBoard empty.
	pawn := MyBlackPawn.
	board at: 'e7' put: pawn.
	pawn moveTo: 'e5'.

	self assert: pawn isFirstMove equals: false
]

{ #category : 'tests' }
MyPawnTest >> testBlackPawnFirstMove [

	| pawn board |
	board := MyChessBoard empty.
	pawn := MyPawn black.
	board at: 'e2' put: pawn.

	self assert: pawn isFirstMove equals: true
]

{ #category : 'tests' }
MyPawnTest >> testFirstMovePawnLegalSquare [

	| pawn board squares |
	board := MyChessBoard empty.
	pawn := MyPawn white.
	board at: 'e2' put: pawn.

	squares := pawn targetSquaresLegal: true.
	self assert: (squares includes: (board at:'e3'))
]

{ #category : 'tests' }
MyPawnTest >> testId [

	self assert: MyPawn new id equals: 'P'
]

{ #category : 'tests' }
MyPawnTest >> testRenderBlackPawnOnBlackSquare [

	self
		assert: (MyPawn black renderPieceOn: MyChessSquare black)
		equals: 'o'
]

{ #category : 'tests' }
MyPawnTest >> testRenderBlackPawnOnWhiteSquare [

	self
		assert: (MyPawn black renderPieceOn: MyChessSquare white)
		equals: 'O'
]

{ #category : 'tests' }
MyPawnTest >> testRenderWhitePawnOnBlackSquare [

	self
		assert: (MyPawn white renderPieceOn: MyChessSquare black)
		equals: 'p'
]

{ #category : 'tests' }
MyPawnTest >> testRenderWhitePawnOnWhiteSquare [

	self
		assert: (MyPawn white renderPieceOn: MyChessSquare white)
		equals: 'P'
]

{ #category : 'tests' }
MyPawnTest >> testWhitePawnAfterFirstMove [

	| pawn board |
	board := MyChessBoard empty.
	pawn := MyPawn white.
	board at: 'e2' put: pawn.
	pawn moveTo: 'e4'.
	

	self assert: pawn isFirstMove equals: false
]

{ #category : 'tests' }
MyPawnTest >> testWhitePawnFirstMove [

	| pawn board |
	board := MyChessBoard empty.
	pawn := MyPawn white.
	board at: 'e2' put: pawn.

	self assert: pawn isFirstMove equals: true
]
