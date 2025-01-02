Class {
	#name : 'MyWhitePawn',
	#superclass : 'MyPawn',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'path commands' }
MyWhitePawn >> moveTo: aSquare [

	| test |
	test := aSquare contents.
	(aSquare name asInteger = 4 and: isFirstMove)
		ifTrue: [ self enPassantFlag: true ]
		ifFalse: [ self enPassantFlag: false ].

	super moveTo: aSquare
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
				  self upMove.
				  self upDiagRightAttack.
				  self upDiagLeftAttack.
				  self enPassantLeftUpMove.
				  self enPassantRightUpMove } ]
		  ifTrue: [
			  {
				  self upMove.
				  self twoUpMove.
				  self upDiagRightAttack.
				  self upDiagLeftAttack } ]
]
