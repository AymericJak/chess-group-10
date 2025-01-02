Class {
	#name : 'MyBlackPawn',
	#superclass : 'MyPawn',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'path commands' }
MyBlackPawn >> moveTo: aSquare [

	| test |
	test := aSquare contents.
	(aSquare name asInteger = 5 and: isFirstMove)
		ifTrue: [ self enPassantFlag: true ]
		ifFalse: [ self enPassantFlag: false ].
		
	super moveTo: aSquare 

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
				  self downMove.
				  self downDiagLeftAttack.
				  self downDiagRightAttack } ]
		  ifTrue: [
			  {
				  self downMove.
				  self twoDownMove.
				  self downDiagLeftAttack.
				  self downDiagRightAttack } ]
]
