Class {
	#name : 'MyWhitePawn',
	#superclass : 'MyPawn',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'path commands' }
MyWhitePawn >> moveTo: aSquare [

	(self legalTargetSquares includes: aSquare) ifFalse: [ ^ self ].

	square emptyContents.

	(aSquare name asInteger = 4 and: isFirstMove)
		ifTrue: [ self enPassantFlag: true ]
		ifFalse: [ self enPassantFlag: false ].
	self isFirstMove: false.
	square := aSquare.
	aSquare contents: self.
]

{ #category : 'rendering' }
MyWhitePawn >> renderPieceOn: aSquare [

	^ aSquare renderWhitePawn
]

{ #category : 'rendering' }
MyWhitePawn >> targetSquaresLegal: aBoolean [

	^ isFirstMove
		  ifFalse: [
			  {
				  self upM.
				  self upDiagRightA.
				  self upDiagLeftA.
				self enPassantLeftUpM } ]
		  ifTrue: [
			  {
				  self upM.
				  self twoUpM.
				  self upDiagRightA.
				  self upDiagLeftA } ]
]
