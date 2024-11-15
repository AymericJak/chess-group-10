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

	^ (isFirstMove
		   ifFalse: [ { square down } ]
		   ifTrue: [
			   {
				   square down.
				   square down down } ]) select: [ :s |
		  s notNil and: s hasPiece not ]
]
