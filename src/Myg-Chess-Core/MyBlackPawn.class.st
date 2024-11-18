Class {
	#name : 'MyBlackPawn',
	#superclass : 'MyPawn',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

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
