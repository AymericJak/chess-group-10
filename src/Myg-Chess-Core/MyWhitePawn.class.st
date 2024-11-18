Class {
	#name : 'MyWhitePawn',
	#superclass : 'MyPawn',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

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
				  self upDiagLeftA } ]
		  ifTrue: [
			  {
				  self upM.
				  self twoUpM.
				  self upDiagRightA.
				  self upDiagLeftA } ]
]
