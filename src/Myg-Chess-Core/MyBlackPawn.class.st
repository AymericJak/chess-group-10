Class {
	#name : 'MyBlackPawn',
	#superclass : 'MyPawn',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'path commands' }
MyBlackPawn >> moveTo: aSquare [

	| test |
	(self legalTargetSquares includes: aSquare) ifFalse: [ ^ self ].
	test := aSquare contents.
	square emptyContents.


	(aSquare name asInteger = 5 and: isFirstMove)
		ifTrue: [ self enPassantFlag: true ]
		ifFalse: [ self enPassantFlag: false ].

	self isFirstMove: false.

	square := aSquare.
	aSquare contents: self
]

{ #category : 'rendering' }
MyBlackPawn >> renderPieceOn: aSquare [

	^ aSquare renderBlackPawn
]

{ #category : 'rendering' }
MyBlackPawn >> targetSquaresLegal: aBoolean [

	^ isFirstMove
		  ifFalse: [
			  {
				  self downM.
				  self downDiagLeftA.
				  self downDiagRightA } ]
		  ifTrue: [
			  {
				  self downM.
				  self twoDownM.
				  self downDiagLeftA.
				  self downDiagRightA } ]
]
